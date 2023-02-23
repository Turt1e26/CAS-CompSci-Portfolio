//
//  RiskFunc.swift
//  AirQuality
//
//  Created by Bodie Woods on 2/10/23.
//

import Foundation


func RiskLevel(pol: String, data: Double) -> String{
    var risk = ""
    if(pol == "no2"){
    if (data > 0 && data <= 50){
    risk = "Very Low"
    } else if (data > 50 && data <= 100){
    risk = "Low"
    } else if (data > 100 && data <= 200){
    risk = "Medium"
    } else if (data > 200 && data <= 400){
    risk = "High"
    } else if (data > 400){
    risk = "Very High"
    }
    return(risk)
    }
    else if(pol == "o3"){
    if (data > 0 && data <= 60){
    risk = "Very Low"
    } else if (data > 60 && data <= 120){
    risk = "Low"
    } else if (data > 120 && data <= 180){
    risk = "Medium"
    } else if (data > 180 && data <= 240){
    risk = "High"
    } else if (data > 240){
    risk = "Very High"
    }
    return(risk)
    }else if(pol == "pm10"){
        if (data > 0 && data <= 25){
        risk = "Very Low"
        } else if (data > 25 && data <= 50){
        risk = "Low"
        } else if (data > 50 && data <= 90){
        risk = "Medium"
        } else if (data > 90 && data <= 180){
        risk = "High"
        } else if (data > 180){
        risk = "Very High"
        }
        return(risk)
        }else if(pol == "pm10"){
            if (data > 0 && data <= 25){
            risk = "Very Low"
            } else if (data > 25 && data <= 50){
            risk = "Low"
            } else if (data > 50 && data <= 90){
            risk = "Medium"
            } else if (data > 90 && data <= 180){
            risk = "High"
            } else if (data > 180){
            risk = "Very High"
            }
            return(risk)
            }else if(pol == "no"){
                if (data > 0 && data <= 25){
                risk = "Very Low"
                } else if (data > 25 && data <= 50){
                risk = "Low"
                } else if (data > 50 && data <= 90){
                risk = "Medium"
                } else if (data > 90 && data <= 180){
                risk = "High"
                } else if (data > 180){
                risk = "Very High"
                }
                return(risk)
                }else if(pol == "co"){
                    if (data > 0 && data <= 250){
                    risk = "Very Low"
                    } else if (data > 250 && data <= 500){
                    risk = "Low"
                    } else if (data > 500 && data <= 900){
                    risk = "Medium"
                    } else if (data > 900 && data <= 1800){
                    risk = "High"
                    } else if (data > 1800){
                    risk = "Very High"
                    }
                    return(risk)
                    } else{
            return("")
        }
    }
