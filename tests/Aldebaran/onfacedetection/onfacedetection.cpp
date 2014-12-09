/**
 *
 * Version : $Id$
 * This file was generated by Aldebaran Robotics ModuleGenerator
 */

#include "onfacedetection.h"

#include <alvalue/alvalue.h>
#include <alcommon/alproxy.h>
#include <alcommon/albroker.h>
#include <althread/alcriticalsection.h>

#include <qi/log.hpp>


OnFaceDetection::OnFaceDetection(boost::shared_ptr<AL::ALBroker> broker,const std::string& name): AL::ALModule(broker, name),fMemoryProxy(getParentBroker()),fFaces(AL::ALValue()),fFacesCount(0),fCallbackMutex(AL::ALMutex::createALMutex()){
  setModuleDescription("This is an autogenerated module, this descriptio needs to be updated.");

  functionName("callback", getName(), "");
  BIND_METHOD(OnFaceDetection::callback)

}

OnFaceDetection::~OnFaceDetection() {}

void OnFaceDetection::init() {
  try {
    /** See if there is any face already detected at initialization. */
    fFaces = fMemoryProxy.getData("FaceDetected");
	std::cout<<fFaces<<std::endl;
    if (fFaces.getSize() < 2) {
      qiLogInfo("module.example") << "No face detected" << std::endl;
      fTtsProxy.say("HAHAHAHA");
    }
    /** Subscribe to the event FaceDetected, with appropriate callback function. */
	std::cout<<"Before callback"<<std::endl;
    fMemoryProxy.subscribeToEvent("FaceDetected", "OnFaceDetection", "callback");
  }
  catch (const AL::ALError& e) {
    qiLogError("module.name") << e.what() << std::endl;
  }
	std::cout<<"end of init"<<std::endl;
}


void OnFaceDetection::callback() {
  /** Use a mutex to make it all thread safe. */
  AL::ALCriticalSection section(fCallbackMutex);
  try {
    /** Retrieve the data raised by the event. */
    fFaces = fMemoryProxy.getData("FaceDetected");
    /** Check that there are faces effectively detected. */
    if (fFaces.getSize() < 2 ) {
      if (fFacesCount != 0) {
        qiLogInfo("module.example") << "No face detected" << std::endl;
        fTtsProxy.say("No face detected.");
        fFacesCount = 0;
      }
      return;
    }
    /** Check the number of faces from the FaceInfo field, and check that it has
    * changed from the last event.*/
    if (fFaces[1].getSize() - 1 != fFacesCount) {
      qiLogInfo("module.name") << fFaces[1].getSize() - 1 << " face(s) detected." << std::endl;
      char buffer[50];
      sprintf(buffer, "%d faces detected.", fFaces[1].getSize() - 1);
      fTtsProxy.say(std::string(buffer));
      /** Update the current number of detected faces. */
      fFacesCount = fFaces[1].getSize() - 1;
    }
  }
  catch (const AL::ALError& e) {
    qiLogError("module.name") << e.what() << std::endl;
  }
}