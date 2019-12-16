import UIKit

class SearchController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var image: UIImage?
    
    let itemsTest = [
        (aBrand: "Mazda",
        aModel: "3",
        aYear: "2012",
        aBody: "Седан",
        aEngineType: "Бензин",
        aEngineVolume: "3.2 л.",
        aEnginePower: "190 л.с.",
        aTransmission: "Автоматическая",
        aDrive: "Полный",
        aColor: "Красный",
        aMileage: "180 000 км.",
        aRegion: "Челябинская область",
        aTown: "Челябинск",
        aContactName: "Василий",
        aContactPhone: "+79525254115",
        aPrice: "1 000 000 рублей",
        aInfo: "Продам, недорого test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test",
        aImage: [
            "https://47.img.avito.st/1280x960/7895113547.jpg",
            "https://48.img.avito.st/1280x960/7895113548.jpg",
            "https://41.img.avito.st/1280x960/7895113541.jpg",
            "https://54.img.avito.st/1280x960/7895113554.jpg",
            "https://47.img.avito.st/1280x960/7895113547.jpg",
            "https://48.img.avito.st/1280x960/7895113548.jpg",
            "https://41.img.avito.st/1280x960/7895113541.jpg",
            "https://54.img.avito.st/1280x960/7895113554.jpg",
            "https://41.img.avito.st/1280x960/7895113541.jpg",
            "https://54.img.avito.st/1280x960/7895113554.jpg"]),
        
        (aBrand: "Volkswagen",
        aModel: "Polo",
        aYear: "2018",
        aBody: "Седан",
        aEngineType: "Бензин",
        aEngineVolume: "3.2 л",
        aEnginePower: "190 л.с.",
        aTransmission: "Автоматическая",
        aDrive: "Полный",
        aColor: "Красный",
        aMileage: "180 000 км.",
        aRegion: "Сверловская область",
        aTown: "Екатеринбург",
        aContactName: "Дмитрий",
        aContactPhone: "+79523214119",
        aPrice: "900 000 рублей",
        aInfo: "Продам, недорого test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test",
        aImage: [
            "https://47.img.avito.st/1280x960/7895113547.jpg",
            "https://48.img.avito.st/1280x960/7895113548.jpg",
            "https://41.img.avito.st/1280x960/7895113541.jpg",
            "https://54.img.avito.st/1280x960/7895113554.jpg",
            "https://47.img.avito.st/1280x960/7895113547.jpg",
            "https://48.img.avito.st/1280x960/7895113548.jpg",
            "https://41.img.avito.st/1280x960/7895113541.jpg",
            "https://54.img.avito.st/1280x960/7895113554.jpg",
            "https://41.img.avito.st/1280x960/7895113541.jpg",
            "https://54.img.avito.st/1280x960/7895113554.jpg"]),
        
        (aBrand: "Volkswagena",
        aModel: "Polo",
        aYear: "2018",
        aBody: "Седан",
        aEngineType: "Бензин",
        aEngineVolume: "3.2 л",
        aEnginePower: "190 л.с.",
        aTransmission: "Автоматическая",
        aDrive: "Полный",
        aColor: "Красный",
        aMileage: "180 000 км.",
        aRegion: "Сверловская область",
        aTown: "Екатеринбург",
        aContactName: "Алексей",
        aContactPhone: "+79823114215",
        aPrice: "900 000 рублей",
        aInfo: "Продам, недорого test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test",
        aImage: [
            "https://47.img.avito.st/1280x960/7895113547.jpg",
            "https://48.img.avito.st/1280x960/7895113548.jpg",
            "https://41.img.avito.st/1280x960/7895113541.jpg",
            "https://54.img.avito.st/1280x960/7895113554.jpg",
            "https://47.img.avito.st/1280x960/7895113547.jpg",
            "https://48.img.avito.st/1280x960/7895113548.jpg",
            "https://41.img.avito.st/1280x960/7895113541.jpg",
            "https://54.img.avito.st/1280x960/7895113554.jpg",
            "https://41.img.avito.st/1280x960/7895113541.jpg",
            "https://54.img.avito.st/1280x960/7895113554.jpg"])
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        itemsTest.count

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SearchCollectionViewCell", for: indexPath as IndexPath) as! SearchCollectionViewCell
        cell.labelBrandModelYear.text = itemsTest[indexPath.item].aBrand + " " + itemsTest[indexPath.item].aModel + ", " + itemsTest[indexPath.item].aYear
        cell.labelPrice.text = itemsTest[indexPath.item].aPrice
        cell.labelTown.text = itemsTest[indexPath.item].aTown
        cell.labelMileage.text = itemsTest[indexPath.item].aMileage
        cell.labelType.text = itemsTest[indexPath.item].aEngineVolume + "/" + itemsTest[indexPath.item].aEnginePower + "/" + itemsTest[indexPath.item].aEngineType
        cell.labelTransmission.text = itemsTest[indexPath.item].aTransmission
        cell.labelColor.text = itemsTest[indexPath.item].aColor
        cell.labelDrive.text = itemsTest[indexPath.item].aDrive
        cell.labelBody.text = itemsTest[indexPath.item].aBody
        cell.layer.borderColor = UIColor.blue.cgColor
        cell.layer.borderWidth = 2
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "AnnouncementDetailStoryboard") as! AnnouncementDetailController
        //_ = vc.view
        vc.loadViewIfNeeded()
        vc.labelBrandModel.text = itemsTest[indexPath.item].aBrand + " " + itemsTest[indexPath.item].aModel
        vc.labelPrice.text = itemsTest[indexPath.item].aPrice
        vc.labelTown.text = itemsTest[indexPath.item].aTown
        vc.labelYear.text = itemsTest[indexPath.item].aYear
        vc.labelMileage.text = itemsTest[indexPath.item].aMileage
        vc.labelBody.text = itemsTest[indexPath.item].aBody
        vc.labelColor.text = itemsTest[indexPath.item].aColor
        vc.labelEngine.text = itemsTest[indexPath.item].aEngineVolume + "/" + itemsTest[indexPath.item].aEnginePower + "/" + itemsTest[indexPath.item].aEngineType
        vc.labelTransmission.text = itemsTest[indexPath.item].aTransmission
        vc.labelDrive.text = itemsTest[indexPath.item].aDrive
        vc.labelContactName.text = itemsTest[indexPath.item].aContactName
        vc.labelContactPhone.text = itemsTest[indexPath.item].aContactPhone
        vc.labelInfo.text = itemsTest[indexPath.item].aInfo
        self.navigationController?.pushViewController(vc, animated: true)
    }


}
