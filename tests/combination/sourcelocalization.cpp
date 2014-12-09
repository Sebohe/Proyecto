/*
 * Copyright (c) 2012 Aldebaran Robotics. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the COPYING file.
 */

#include <qi/log.hpp>
#include <althread/alcriticalsection.h>
#include <alproxies/alrobotpostureproxy.h>
#include <alproxies/alnavigationproxy.h>


#include "sourcelocalization.h"


const AL::ALValue jointName = "Head";

SourceLocalization::SourceLocalization(boost::shared_ptr<AL::ALBroker> broker,const std::string& name): AL::ALModule(broker, name), fCallbackMutex(AL::ALMutex::createALMutex()){

	setModuleDescription("Locate de source of a sound and raise an event when it does");

	functionName("soundLocated", getName(), "Method when a sound is located");
	BIND_METHOD(SourceLocalization::soundLocated)
}

SourceLocalization::~SourceLocalization(){
	AL::ALRobotPostureProxy posture(getParentBroker());
	std::cout<<"~"<<std::endl;
	audio.ALAudioSourceLocalizationProxy::unsubscribe("AUDIO");
	AL::ALValue stiffness = 0.0f;
	AL::ALValue time = 1.0f;
	motion.stiffnessInterpolation(jointName, stiffness, time);
	posture.goToPosture("Crouch",0.5);
	motion.rest();
	
}




void SourceLocalization::init(){
	AL::ALRobotPostureProxy posture(getParentBroker());
	posture.goToPosture("StandInit",0.5);
	try{
		// 0 mucha fuerza necesaria 1 poca fuerza necesaria
		audio.setParameter("Sensibility", 0.75);
		audio.setParameter("EnergyComputation", 1);
	 	audio.ALAudioSourceLocalizationProxy::subscribe("AUDIO");
		

		/** Subscribe to event RightBumperPressed
    		* Arguments:
    		* - name of the event
  		* - name of the module to be called for the callback
   		* - name of the bound method to be called on event
    		*/
    		memory.subscribeToEvent("ALAudioSourceLocalization/SoundLocated", "SourceLocalization", "soundLocated");



	}
	catch (const AL::ALError& e) {
    		qiLogError("module.name") << e.what() << std::endl;
  	}
}//init

/*Lo que hace el programa es emter en el subscribe to event... y se queda adentro de el hasta que hacemos que temrmine el programa.

si queremos que haga algo antes de empezar el subscibe podemos ver el ejemplo de onfacedetection donde le pide a ver si antes de inciar por lo menos hay algun rostro.

*/

float yaw, pitch, azimuth, elevacion, confidence;
AL::ALValue data;
void SourceLocalization::soundLocated(){
	AL::ALNavigationProxy navigation(getParentBroker());
	/** Use a mutex to make it all thread safe. */
	AL::ALCriticalSection section(fCallbackMutex);
	data = memory.getData("ALAudioSourceLocalization/SoundLocated");
	azimuth=data[1][0];
	elevacion=data[1][1];
	yaw=data[2][5];
	pitch=data[2][4];
	confidence=data[1][2];
	std::cout<<"Azimuth: "<<(azimuth)<<std::endl;
	std::cout<<"Elevacion: "<<(elevacion)<<std::endl;
	std::cout<<"Confidence: "<<confidence<<std::endl;
	std::cout<<"Data: "<<data<<std::endl;
	std::cout<<"\n"<<std::endl;

	if(((azimuth==0.0f)&&(elevacion==0.0f))||(confidence<0.7f)){
		return;
	}
	else{
		/**************************MOVER CABEZA**************************/
		AL::ALValue stiffness = 1.0f;
		/** Time (in seconds) to reach the target. */
		AL::ALValue time = 0.5f;
		/** Call the stiffness interpolation method. */
		motion.stiffnessInterpolation(jointName, stiffness, time);
		/** Set the target angle list, in radians. */
	   	AL::ALValue targetAngles;
		
		if(yaw+azimuth>4.2){	
			targetAngles = AL::ALValue::array(-6.28+(azimuth+yaw),(elevacion));
		}
		else{
			if(yaw+azimuth<(-4.2)){
				targetAngles = AL::ALValue::array(6.28+(azimuth+yaw),(elevacion));
			}
			else{
				targetAngles = AL::ALValue::array(azimuth+yaw,(elevacion));
			}
		}
	
		//targetAngles = AL::ALValue::array(azimuth,elevacion); // (angulo #1, angulo #2, angulo #3)
	    /** Set the corresponding time lists, in seconds. */
		AL::ALValue targetTimes = AL::ALValue::array(1.0f,1.0f); // (t = 3s angulo #1, t = 6s angulo #2, t=9s angulo #3)
	    /** Specify that the desired angles are absolute. */
	    bool isAbsolute = true; //Determines if angle is absolute or relative
	    /** Call the angle interpolation method. The joint will reach the
	    * desired angles at the desired times.
		*/
		AL::ALValue targetAnglesCero=(0.0f,0.0f);
		AL::ALValue targetTimesCero= (1.0f,1.0f);   	
		motion.angleInterpolation(jointName, targetAngles, targetTimes, isAbsolute);
		motion.post.angleInterpolation(jointName, targetAnglesCero, targetTimesCero, isAbsolute);
		navigation.moveTo(0.0,0.0,azimuth);
	navigation.moveTo(0.6f,0.0,0.0);
	}
	
}


