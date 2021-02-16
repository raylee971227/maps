import Foundation
import MapboxMaps

@objc(RCTMGLLocation)
class RCTMGLLocation: NSObject {
    
}

typealias RCTMGLLocationBlock = (RCTMGLLocation) -> Void

let RCT_MAPBOX_USER_LOCATION_UPDATE = "MapboxUserLocationUpdate";

@objc(RCTMGLLocationModule)
class RCTMGLLocationModule: RCTEventEmitter {
    
    @objc
    override static func requiresMainQueueSetup() -> Bool {
        return true
    }
    
    @objc
    override func constantsToExport() -> [AnyHashable: Any]! {
        return [
            "foo": "bar"
        ];
    }

    @objc override func supportedEvents() -> [String]
    {
        return [RCT_MAPBOX_USER_LOCATION_UPDATE];
    }
    
    
    @objc func addListenerSwift(_ listener: RCTMGLLocationBlock)
    {
        
    }
    
    @objc func start(_ minDisplacement: CLLocationDistance) {
        print("TODO implement RCTMGLLocationModule.start!")
    }
    
    @objc func getLastKnownLocation() -> RCTMGLLocation? {
        return RCTMGLLocation()
    }
    
    @objc func setMinDisplacement(_ minDisplacement: CLLocationDistance) {
        print("TODO implement RCTMGLLocationModule.setMinDisplacement!")
    }
}
