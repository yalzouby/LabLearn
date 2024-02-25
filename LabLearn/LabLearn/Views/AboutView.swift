import SwiftUI

struct LabTest {
    let title: String
    let description: String
}

struct LabLearn {
    static let understandingYourLabResults: LabTest = LabTest(
        title: "LabLearn: Understanding Your Lab Results",
        description: """
        What is a laboratory test?

        A laboratory (lab) test checks a sample of your blood, urine (pee), or other body fluid or tissue to learn about your health. The sample is sent to a lab where health care professionals test it to see if it contains certain substances and, if so, how much.

        Some key points to understand:
        - Lab tests can show whether you have a specific health condition or provide more general information about your health.
        - Test results guide your healthcare provider in deciding whether additional tests are needed.

        What is a reference range?

        Lab test results are reported in a reference range, indicating the high and low ends of normal results. These ranges are based on tests from large groups of healthy people.

        Key points about reference ranges:
        - Results outside the reference range may indicate a health problem, but not always.
        - Labs use different reference ranges, and tests have different units of measurement.

        What can affect my results?

        Several factors can impact the accuracy of test results, including diet, medications, exercise, and menstrual cycles. Follow your provider's instructions for accurate results.


        Remember: At LabLogic, we aim to empower you with knowledge. Test results are a vital part of your health journey, and understanding them is key to making informed decisions.
        
        All lab test information is currently sourced from medlineplus.gov
        """
    )
}

struct AboutView: View {
    var body: some View {
        ScrollView {
            VStack {
                Image("LabLearnLogo2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
                VStack(alignment: .leading) {
                    Text(LabLearn.understandingYourLabResults.title)
                        .font(.title)
                        .padding(.bottom).foregroundStyle(Color(red: 0.0, green: 0.30196, blue: 0.3451))
                    
                    Text(LabLearn.understandingYourLabResults.description)
                        .font(.body).foregroundStyle(Color(red: 0.0, green: 0.30196, blue: 0.3451))
                }
                .padding()
            }
        }
        .background(Color(red: 1.0, green: 0.9725, blue: 0.9843))
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
