//
//  InstructorHomeViewController.swift
//  Zakerly
//
//  Created by Izma3iin on 7/6/21.
//

import UIKit
import Charts

class InstructorHomeViewController: UIViewController, ChartViewDelegate,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    

    @IBOutlet weak var studentsPerYear: PieChartView!
    @IBOutlet weak var hoursPerYear: PieChartView!
    @IBOutlet var completedLessons: UILabel!
    @IBOutlet var incomingLessons: UILabel!
    @IBOutlet var numOfHours: UILabel!
    @IBOutlet var calenderCollectionView: UICollectionView!
    
    var arrAppointments = [Appointment]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        studentsPerYear.delegate = self
        hoursPerYear.delegate = self
        calenderCollectionView.delegate = self
        calenderCollectionView.dataSource = self
        calenderCollectionView.register(UINib(nibName: "CalendarCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "calendarCell")
        arrAppointments.append(Appointment.init(date: "10/10/2021", time: "12:30 PM", lesson: "Android", student: "Ahmed"))
        arrAppointments.append(Appointment.init(date: "1/4/2021", time: "01:30 PM", lesson: "Photoshop", student: "Hassan"))
        arrAppointments.append(Appointment.init(date: "10/7/2021", time: "02:00 PM", lesson: "UI", student: "Raouf"))
        arrAppointments.append(Appointment.init(date: "25/12/2021", time: "01:20 PM", lesson: "Flutter", student: "Emad"))
        arrAppointments.append(Appointment.init(date: "3/11/2021", time: "09:00 PM", lesson: "iOS", student: "Mahdy"))
        arrAppointments.append(Appointment.init(date: "10/10/2021", time: "12:30 PM", lesson: "Arduino", student: "Kessie"))
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        var entries = [ChartDataEntry]()
        for x in 1..<4 {
            entries.append(ChartDataEntry(x: Double(x), y: Double(x)))
        }
        let set = PieChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.joyful()
        let data = PieChartData(dataSet: set)
        studentsPerYear.data = data
        hoursPerYear.data = data
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrAppointments.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = calenderCollectionView.dequeueReusableCell(withReuseIdentifier: "calendarCell", for: indexPath) as! CalendarCollectionViewCell
        let data = arrAppointments[indexPath.row]
        cell.setupCell(date: data.date, time: data.time, lesson: data.lesson, student: data.student)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.4, height: self.view.frame.width * 0.4)
    }

    struct Appointment {
        let date : String
        let time : String
        let lesson : String
        let student : String
    }

}
