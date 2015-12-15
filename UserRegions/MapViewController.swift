import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let location = CLLocationCoordinate2D(
            latitude: 50.716382,
            longitude: -1.875637
        )
        
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        
        let pierAnnotation = MKPointAnnotation()
        pierAnnotation.coordinate = location
        pierAnnotation.title = "Freshers"
        pierAnnotation.subtitle = "First Year"
        mapView.addAnnotation(pierAnnotation)
        
        let Secondlocation = CLLocationCoordinate2D(
            latitude: 50.716565,
            longitude: -1.878560
        )
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = Secondlocation
        annotation.title = "Graduation"
        annotation.subtitle = "Third Year"
        mapView.addAnnotation(annotation)
        
        let fireLocation = CLLocationCoordinate2D(
            latitude: 50.713721,
            longitude: -1.874475
        )
        
        let fireAnnotation = MKPointAnnotation()
        fireAnnotation.coordinate = fireLocation
        fireAnnotation.title = "Pier Charity Jump"
        fireAnnotation.subtitle = "Second Year"
        mapView.addAnnotation(fireAnnotation)
        
        let parisLocation = CLLocationCoordinate2D(
            latitude: 50.716246,
            longitude: -1.873110
        )
        
        let parisAnnotation = MKPointAnnotation()
        parisAnnotation.coordinate = parisLocation
        parisAnnotation.title = "Beach Fire"
        parisAnnotation.subtitle = "First Year"
        mapView.addAnnotation(parisAnnotation)
        
        let uniLocation = CLLocationCoordinate2D(
            latitude: 50.743226,
            longitude: -1.897083
        )
        
        let uniAnnotation = MKPointAnnotation()
        uniAnnotation.coordinate = uniLocation
        uniAnnotation.title = "Presentation"
        uniAnnotation.subtitle = "Second Year"
        mapView.addAnnotation(uniAnnotation)
        
        let bdayLocation = CLLocationCoordinate2D(
            latitude: 50.718043,
            longitude: -1.879966
        )
        
        let bdayAnnotation = MKPointAnnotation()
        bdayAnnotation.coordinate = bdayLocation
        bdayAnnotation.title = "21st Birthday Celebrations"
        bdayAnnotation.subtitle = "Third Year"
        mapView.addAnnotation(bdayAnnotation)
        
    }
    
}


