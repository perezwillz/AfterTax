//
//  ModelController.swift
//  AfterTax
//
//  Created by Perez Willie Nwobu on 1/2/18.
//  Copyright © 2018 Perez Willie Nwobu. All rights reserved.
//

import Foundation
import CoreData
import UserNotifications

class TaxPayerController {
    
    static let shared = TaxPayerController()
    
    var arrayOfLoadingLabels = ["Calculating Federal Income tax..","Calculating State Taxes...","Calculating Allowances...","All Done!"]
    
    var arrayOfStates = ["AK", "AL", "AZ", "AR", "CA", "CO", "CT", "DE", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", "ND", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VT", "VA", "WA", "WV", "WI", "WY"]
    
    var arrayOfStatesWithNoTaxes = ["AK", "TN", "NV", "AR", "FL", "SD", "WY", "WA", "NH","TX"]
    
    var arrayOfFacts = ["The word “tax” is from the Latin taxo, meaning “I estimate.","Approximately 90% of people who employ housekeepers and babysitters cheat on their taxes.","If someone reports their company for tax evasion in the U.S., he or she will receive 30% of the amount collected.","The federal tax code was 400 pages in 1913. In 2010 it was 70,000 pages.","Around 47% of Americans did not pay income tax in 2012. In 2007, before the economic downturn, 40% of households did not owe federal income tax.","There are several types of taxes, including income, Social Security, sales, property, and excise taxes.","","While the federal corporate tax rate is 35%, in reality, many companies usually pay far less than that because of loopholes and subsidies.","In 2010, General Electric made over $4 billion in U.S. profits. It paid $0 in taxes.","The average number of days a person worked to pay his or her 2009 taxes was 103","The United States has what is called a progressive tax system, which means that the more money a person makes, the more he or she pays in income tax.","Excise taxes are also called “sin taxes.” They are taxes on alcohol, tobacco, and gambling.","Over 1 million accountants are hired each year in America to help with taxes.","Texas has a “pole tax” which is a tax on strip clubs, peep shows, and nude dancing. The revenue from the tax goes to sexual assault victims and health insurance for the poor.","While disposable diapers are subject to sales tax in Wisconsin, cloth diapers are not.","In Texas, cowboy boots are exempt from sales tax. Hiking books are not.","Following Jimmy Carter, every U.S. president has released their tax returns, except Donald Trump.","In 2009, Bank of America had an income of $4.4 billion. However, they paid $0 in taxes.","Albert Einstein once said: “The hardest thing in the world to understand is the income tax.”","There are at least 480 tax forms on the IRS website.","The IRS estimates that in 2007, Americans who didn’t pay their taxes collectively owed more than $345 billion in taxes.","The Stamp Act of 1765 was the first tax imposed directly on the American colonies by England. The new tax required the American colonists pay a tax on every piece of printed paper they used.","Biblical Israel split into two kingdoms after Solomon’s death in large part because his son the new king refused to cut taxes.","The U.S. Civil War was not about slavery but mainly about taxation.","According to one historian, plane geometry was not invented by Euclid but by ancient tax collectors who wanted to determine land size for harvest taxes.","The founder of AfterTax made after tax because he hated taxes when he came to America at 17","","In 1787, U.S. citizens were eligible to vote only if they were taxpayers.","Tax evasion has been noted as an important contributing cause to the fall of the Roman Empire.","Americans spend over $27.7 billion every year doing their taxes","In Switzerland, William Tell shot the apple off his son’s head as punishment for tax resistance.","The IRS receives over 140 million individual tax returns and collects over $950 billion in taxes.","","The biggest tax deductions are those for taxes paid to state and local governments. Next biggest are for interest, especially on home mortgages.","This app does not pay taxes, The founder registered the company in Nigeria.","An estimated 44% of Americans pay no federal income tax ","A good 17% of workers violate the tax code when filing their returns","IRS employees also break the law "," More than one-fifth of paper tax returns contain errors","“Uncle Sam wants you to be healthy! If you quit smoking, you can write off any smoking cessation products or programs.","There are more words in the tax code than there are in the Bible. The tax code is about 4 million words long.","The first known taxes were in Sumer (Mesopotamia) almost 5,000 years ago. They were recorded on clay cones and paid in livestock.","The writing on the Rosetta Stone, a monumentally important artifact and the key to deciphering ancient Egyptian hieroglyphics, is mostly about taxes.","In the 1st century, the Roman emperor taxed urine. It was collected for the ammonia and use to launder garments and tan hides","In 2011, the country of Romania was trying to pull itself out of a steep recession, decided to add a new profession to the country’s labor code, making it subject taxation. The profession? Witchcraft.","Several European nations have a tax on cow flatulence. It’s actually very important because methane gas is one of the main greenhouse gases that causes climate change. But still: cow flatulence.","In 1935, the US tax code’s highest income tax bracket (63 percent) applied to only one person: Nelson Rockefeller, who earned over $5 million the previous year.","During the Middle Ages, European governments placed a tax on soap.","In 1885 Canada created the Chinese Head Tax, which taxed the entry of Chinese immigrants into Canada. The tax lasted until 1923 when a law was passed banning Chinese people from entering Canada altogether with a few exceptions.","New York City places a special tax on prepared foods, so sliced bagels are taxed once as food and again as prepared food, thus creating a sliced bagel tax","Maine has special tax on blueberries, a valuable state resource.","Pennsylvania has a tax on coin-operated vacuum machines at gas stations.","Pittsburgh has a 5% amusement tax on anything that offers entertainment or allows people to engage in entertainment.","In 2005, Tennessee began requiring drug dealers to anonymously pay taxes on any illegal substances they sold.","In California, snuff tobacco is taxed differently depending on its type. Dry snuff is taxed at 256% of its price if it’s $1.70 or more. Moist snuff is taxed at 170% of its price if it’s $1.70 or more.","In Chicago, candy that is prepared with flour is taxed as food at 1%, while candy that is prepared without flour is taxed as candy at 6.25%.","Numerous states charge a tax on admissions to racetracks and casinos.","In California, fresh fruit bought through a vending machine is subject to a 33% tax.","In Oregon, double amputees get a $50 tax credit.","In West Virginia, there is an additional tax on sparklers.","In Colorado, essential food items are tax-free, but straws and cup lids are subject to sales tax because they are considered to be nonessential food items.","In New Mexico, people over 100 years old are tax-exempt, but only if they are not dependents.","In Minnesota, there is a special tax on fur.","Out of every tax dollar you (and your neighbors) pay, 29¢ goes to health care, and 23¢ goes to the military.","Of every dollar you pay in income taxes, 23¢ goes to the military – but only 5¢ goes to our troops in the form of pay, housing allowances and other benefits.","there were 152,544,000 individual income tax returns filed in 2016 with an average of $2,860 refund per return (that’s $317.6 BILLION in refunds!)","the IRS is very efficient; for every $100 they collect they spend only 35¢","the top 20% of earners in the US pay 69% of all income taxes (the top 1% of wage earners paying 43%!)","there have been 5,000 tax law changes from 2001-2012","the US has 664,532 licensed CPA’s and a combined total 1.2 MILLION paid preparers; by comparison the US has 1.05 MILLION police/firefighters/EMT’s COMBINED","Emotional Damages Are Taxable","Physical Injuries and Illnesses Are Tax-Free","Medical Bills Are Not Taxable","The IRS Will Tax Lost Wage Damages","The benefits you receive while you are unemployed are taxable. In some states, you will be taxed also, Eisenkraft said.","Entrepreneurs and their employees who take an online class or one to be certified for a certain skill can deduct the cost of the classes.","The U.S. is one of only a few countries that taxes its citizens on all their income even if they do not live in their home country.","No need to throw away the disappointing lottery tickets. Keep them so you can deduct losses as an itemized deduction, up to the amount of your winnings.","You can deduct the construction and maintenance of a swimming pool only if you have a medical condition and your doctor prescribes it.","If you foster animals and work with a 501(c)3 charity, you can deduct your expenses such as food, treats, litter, crates or charitable miles driven to a vet or adopter.","Taxpayers can deduct the income they earn from growing marijuana, distribution or sales, said Mark Steber, chief tax officer at Jackson Hewitt Tax Service.","Alaskan whaling captains are permitted a deduction of up to $10,000 a year for their sanctioned whale hunting activities.","Taxpayers are only able to write off cosmetic surgery as a result of specific circumstances like injuries.","In 2016, the federal government collected $3.3 trillion in taxes.","n 2016, the state and local governments collected a combined total of $1.6 trillion in taxes.","America collects lower revenues than other industrialized countries.","Tax expenditures represent a large share of total government spending.","Virtually all American families, even low‑income families, pay taxes.","Breaking Bad was going to be set in Riverside, California, but the tax breaks were better in New Mexico, so it took place in Albuquerque instead.","If you turn 100 and live in New Mexico, you can stop paying income tax!","New York charges a tax for altering bagels, aka slicing or putting toppings on them.","If you get your coffee to go in Colorado, expect to pay a tax for a lid.","Texas’ “pole tax” on strip clubs actually helps fund sexual assault prevention, intervention, and research.","In Hawaii, you can get a tax deduction for owning an 'exceptional tree'.","Nevada gives out free decks of cards to everyone who files a tax return.","About 7 million children 'disappeared' after a new 1985 tax law.","The US tax code is longer than all of Shakespeare's works and War and Peace combined.","In fact, even Albert Einstein once said, 'The hardest thing in the world to understand is the income tax.'","A former IRS commissioner, Joseph Nunan, once served five years in prison for tax evasion .","There was no federal income tax in the US until the Civil War."," In 1696, England began taxing citizens based on the number of windows on their house as an indirect way of targeting the wealthy."," Newspapers are printed on such large sheets of paper because of a British 'knowledge tax' that passed in 1712.","Peter the Great instituted a beard tax in Russia in 1698 in an attempt to modernize the country.","Witches in Romania were exempt from paying taxes until 2011.","Before Apollo 13's close call with disaster, astronaut Jack Swigert was more worried about filing his taxes on time.","Madison Square Garden has been exempt from property taxes since 1982, which means New York City is missing out on $50 million a year.","The US makes citizens pay taxes, even if they've permanently moved abroad."," Willie Nelson owed $15 million in back taxes in 1990, which the government let him repay through sales of a special new album called “Who’ll Buy My Memories? (The I.R.S. Tapes)”.","If you report anyone who has cheated on their taxes to the IRS, you’ll be paid a minimum of 15% of the amount they owe to the IRS. Will you snitch?","All Germans who are officially registered as Catholics, Protestants or Jews pay a religious tax of 8-9% on their annual income tax bill.","In 1864, a cult leader once deeded 600 acres of land to “God,” but the State of Pennsylvania took possession and sold it because the Almighty didn’t pay His taxes.","In 1935 when Roosevelt raised the top tax rate to 79% for those making over $5 million, it only applied to one person in the United States, John D. Rockefeller."," A 1997 poll showed that Americans thought NASA’s funding accounted for 20% of the federal budget.","In 1909, the citizens of Ulysses, Kansas, moved their whole city (including all buildings) to evade exorbitant property taxes","Due to a strange law in America, importing toys resembling humans are taxed higher than those that do not. Marvel successfully argued in court that because their X- men action figures are mutants, they should be exempt from such taxes.","The U.S. is the world’s only industrialized nation that taxes citizens who live overseas, even if their income is generated in a foreign country and they never intend to return to America."," Until 2006 U2 paid no tax in Ireland due to an exemption for artists. When the exemption was capped at $315,000, the band moved its accounts to the Netherlands, rather than face a multi-million tax bill for album sales and royalties."," Google uses a complicated tax dodge to pay only 2.4% taxes on its non-US income (which would be taxed at 35% in the US).","For first time since the Great Depression , U.S. households are now receiving more income from the U.S. government than they are paying to the government in taxes","Hunters have paid more than 700 million dollars to add 5.2 million acres to the National Wildlife Refuge System and contribute more than 250 million dollars annually in taxes for new public game lands.","Crack tax is a name given to the taxes on illegal drugs in Tennessee. Drug dealers are required to pay anonymously at the state revenue office, where they received a stamp to prove their payment.","In 1944, the income tax rate in the U.S. for the top bracket was 94%","BP paid no federal income tax to the U.S. government in 2010 by claiming the Gulf clean-up efforts as business expenses.","A 1997 poll showed that Americans thought NASA’s funding accounted for 20% of the federal budget. In fact, NASA has received one cent or less per every tax dollar since 1975.","The Prophet of Islam, Muhammad gave a charter to a Christian Monastery that granted protection to all Christians in Islamic countries along with exception from taxes/military service, freedom of worship, and protection during war. All Muslims are to follow this charter until the end of the world."]
    
    
    //Function to return random fact
    
    func randomFactMaker() ->(String){
        let randomIndex = Int(arc4random_uniform(UInt32(arrayOfFacts.count)))
        let randomFact = arrayOfFacts[randomIndex]
        print(randomFact)
        return randomFact
    }
    
    func createUserNofification(){
        let content = UNMutableNotificationContent()
        content.title = "Did you Know?"
        content.body = randomFactMaker()
        content.sound = UNNotificationSound.default()
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 172800, repeats: true)
        
        let request = UNNotificationRequest(identifier: "Identifier", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request) { (error) in
            print(error as Any)
        }
    }
    
    var isHourlyPay: Bool = true
    
    //Allowances
    let ArrayForAllowances : [Int] = [0,1,2,3,4,5,6,7,8,9]
    
    
    //HourlyPay
    let hourlyPayArray = Array(1...300)
    let hourlyPayCentArray : [Int] = [00,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95]
    
    //W4
    var married : Bool = false
    var state : String = "NY"
    var dependents : Int = 0
    var federalAllowance : Int = 0
    var stateAllowance : Int = 0
    
    var allAllowances: Double {
        return Double(federalAllowance + stateAllowance) * 79.80
    }
    
    var allAllowancesForSalaries : Double {
        return  Double(federalAllowance + stateAllowance) * 4150
    }
    
    //Taxes
    var federalIncomeTax : Double = 0.00
    var medicAidTax : Double = 0.00
    var socialSecurityTax : Double = 0.00
    var utahStateTax : Double = 0.00
    var cashAfterTax : Double =  0.00
    var cashBeforeTaxes : Double = 0.00
    var totalTaxes : Double =  0.00
    var federalIncomeAfterAllowance : Double = 0.00
    var hourlyPay : Double = 1
    
    
    func calculateAmountForSingle(hours: Double)-> Double{
        
        let grossPay = Double(hours) * Double(hourlyPay)
        
        cashBeforeTaxes = grossPay
        
        federalIncomeAfterAllowance = grossPay - Double(allAllowances)
        
        switch grossPay {
        case _ where federalIncomeAfterAllowance > 71 && federalIncomeAfterAllowance <= 254:
            
            let remainder = federalIncomeAfterAllowance - 71
            federalIncomeTax = remainder * 0.10
            
            print("Federal Income tax is = \(federalIncomeTax)")
            federalIncomeTax = federalIncomeTax + 0.00
            
            //State Taxes
            utahStateTax = grossPay * 0.05
            print("Your State tax is = \(utahStateTax)")
            
            //Medicaid
            medicAidTax = grossPay * 0.0145
            print("MedicAid tax is = \(medicAidTax)")
            
            
            //Social security
            socialSecurityTax = grossPay * 0.062
            print("Your social security = \(socialSecurityTax)")
            
            
            
            totalTaxes = socialSecurityTax + federalIncomeTax + medicAidTax + utahStateTax
            cashAfterTax = grossPay - totalTaxes
            print("total taxes \(totalTaxes)")
            print("So what you finally get after all taxes is \(cashAfterTax)")
            return cashAfterTax
            ;
            
        case _ where federalIncomeAfterAllowance  > 254 && federalIncomeAfterAllowance  <= 815:
            
            let remainder = federalIncomeAfterAllowance  - 254
            federalIncomeTax = remainder * 0.12
            federalIncomeTax = federalIncomeTax + 18.30
            print("Federal Income tax is = \(federalIncomeTax)")
            
            
            //State tax
            utahStateTax  = grossPay * 0.05
            print("utah State Tax  is = \(utahStateTax)")
            
            
            
            //Medicaid
            medicAidTax = grossPay * 0.0145
            print("MedicAid tax is = \(medicAidTax)")
            
            //Socoal security
            socialSecurityTax = grossPay * 0.062
            print("socialSecurityTax = \(socialSecurityTax)")
            
            totalTaxes = socialSecurityTax + federalIncomeTax + medicAidTax + utahStateTax
            cashAfterTax = grossPay - totalTaxes
            print("total taxes \(totalTaxes)")
            print("So what you finally get after all taxes is \(cashAfterTax)")
            return cashAfterTax
            ;
            
        case _ where federalIncomeAfterAllowance  > 815 && federalIncomeAfterAllowance  <= 1658:
            
            let remainder = federalIncomeAfterAllowance  - 815
            federalIncomeTax = remainder * 0.22
            federalIncomeTax = federalIncomeTax + 85.62
            print("Federal Income tax is = \(federalIncomeTax)")
            
            
            //State taxes
            utahStateTax = grossPay * 0.05
            print("Social Security tax is = \(utahStateTax)")
            
            
            //Medicaid
            medicAidTax = grossPay * 0.0145
            print("MedicAid tax is = \(medicAidTax)")
            
            //SocialSecurity
            socialSecurityTax = grossPay * 0.062
            print("socialSecurityTax = \(socialSecurityTax)")
            
            totalTaxes = socialSecurityTax + federalIncomeTax + medicAidTax + utahStateTax
            cashAfterTax = grossPay - totalTaxes
            print("total taxes \(totalTaxes)")
            print("So what you finally get after all taxes is \(cashAfterTax)")
            return cashAfterTax
            ;
            
        case _ where federalIncomeAfterAllowance  > 1658 && federalIncomeAfterAllowance  <= 3100:
            
            let remainder = federalIncomeAfterAllowance  - 1658
            federalIncomeTax = remainder * 0.24
            federalIncomeTax = federalIncomeTax + 271.08
            print("Federal Income tax is = \(federalIncomeTax)")
            
            //State Taxes
            utahStateTax = grossPay * 0.05
            print("utahStateTax = \( utahStateTax)")
            //Medicaid
            medicAidTax = grossPay * 0.0145
            print("MedicAid tax is = \(medicAidTax)")
            
            //Social Security
            socialSecurityTax = grossPay * 0.062
            print("socialSecurityTax  = \(socialSecurityTax )")
            
            totalTaxes = socialSecurityTax + federalIncomeTax + medicAidTax + utahStateTax
            cashAfterTax = grossPay - totalTaxes
            print("total taxes \(totalTaxes)")
            print("So what you finally get after all taxes is \(cashAfterTax)")
            return cashAfterTax
            ;
            
        case _ where federalIncomeAfterAllowance  > 3100 && federalIncomeAfterAllowance  <= 3917:
            
            let remainder = federalIncomeAfterAllowance  - 3100
            federalIncomeTax = remainder * 0.32
            federalIncomeTax = federalIncomeTax + 617.16
            print("Federal Income tax is = \(federalIncomeTax)")
            
            
            //StateTax
            utahStateTax = grossPay * 0.05
            print("utahStateTax = \(utahStateTax)")
            
            
            //Medicaid
            medicAidTax = grossPay * 0.0145
            print("MedicAid tax is = \(medicAidTax)")
            
            //Social security
            socialSecurityTax = grossPay * 0.062
            print("socialSecurityTax = \(socialSecurityTax)")
            
            totalTaxes = socialSecurityTax + federalIncomeTax + medicAidTax + utahStateTax
            cashAfterTax = grossPay - totalTaxes
            print("total taxes \(totalTaxes)")
            print("So what you finally get after all taxes is \(cashAfterTax)")
            return cashAfterTax
            ;
            
        case _ where federalIncomeAfterAllowance  > 3917 && federalIncomeAfterAllowance <= 9687:
            
            let remainder = federalIncomeAfterAllowance  - 3917
            federalIncomeTax = remainder * 0.35
            federalIncomeTax = federalIncomeTax + 878.60
            print("Federal Income tax is = \(federalIncomeTax)")
            
            
            
            //State tax
            utahStateTax = grossPay * 0.05
            print("utahStateTax = \(utahStateTax)")
            
            
            //Medicaid
            medicAidTax = grossPay * 0.0145
            print("MedicAid tax is = \(medicAidTax)")
            
            //SocialSecuroty
            socialSecurityTax = grossPay * 0.062
            print("socialSecurityTax = \(socialSecurityTax)")
            
            totalTaxes = socialSecurityTax + federalIncomeTax + medicAidTax + utahStateTax
            cashAfterTax = grossPay - totalTaxes
            print("total taxes \(totalTaxes)")
            print("So what you finally get after all taxes is \(cashAfterTax)")
            return cashAfterTax
            ;
            
            
        case _ where federalIncomeAfterAllowance  > 9687 && federalIncomeAfterAllowance  <= 10000000000000000000000000000000000000000000000000000:
            
            let remainder = federalIncomeAfterAllowance - 9687
            federalIncomeTax = remainder * 0.37
            federalIncomeTax = federalIncomeTax + 2325.28
            print("Federal Income tax is = \(federalIncomeTax)")
            
            
            //State Taxes
            utahStateTax = grossPay * 0.05
            print("utahStateTax = \(utahStateTax)")
            //Medicaid
            medicAidTax = grossPay * 0.0145
            print("MedicAid tax is = \(medicAidTax)")
            
            //Social Security
            socialSecurityTax = grossPay * 0.062
            print("socialSecurityTax = \(socialSecurityTax)")
            
            totalTaxes = socialSecurityTax + federalIncomeTax + medicAidTax + utahStateTax
            cashAfterTax = grossPay - totalTaxes
            print("total taxes \(totalTaxes)")
            print("So what you finally get after all taxes is \(cashAfterTax)")
            return cashAfterTax
            ;
            
            
        default:
            print("Income Tax is Zero")
            
            //State
            utahStateTax = grossPay * 0.05
            print("Social Security tax is = \(utahStateTax)")
            
            
            //Medicaid
            medicAidTax = grossPay * 0.0145
            print("MedicAid tax is = \(medicAidTax)")
            
            //Social Security
            socialSecurityTax = grossPay * 0.062
            print("socialSecurityTax= \(socialSecurityTax)")
            
            totalTaxes = socialSecurityTax + federalIncomeTax + medicAidTax + utahStateTax
            cashAfterTax = grossPay - totalTaxes
            print("total taxes \(totalTaxes)")
            print("So what you finally get after all taxes is \(cashAfterTax)")
            return cashAfterTax
            
        }
        
    }
    
}


