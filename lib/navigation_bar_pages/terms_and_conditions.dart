import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
        child: SingleChildScrollView(
        child: Column(
        mainAxisAlignment:MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 80),
            child: Container(
              height: h*0.05,
              width: w,
              child: Text("Terms and Conditions ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0),
            child: Container(
              height: h*0.3,
              width: w,
              child: Text("By accessing the Exposys Data Labs website (the “Site”), you are agreeing"
                  " to be bound by these web site Terms and Conditions, all applicable laws and regulations,"
                  " and agree that you are responsible for compliance with any applicable local laws."
                  " If you do not agree with any of these terms, you are prohibited from using or accessing"
                  " the Site. Exposys Data Labs may revise these terms of use at any time without notice. ",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0),
            child: Container(
              height: h*0.07,
              width: w,
              child: Text("Disclaimer",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0),
            child: Container(
              height: h*0.4,
              width: w,
              child: Text("All materials provided on the Site are provided “as is,” without"
                  " warranty of any kind, and Exposys Data Labs makes no warranties, express "
                  "or implied, and hereby disclaims and negates all other warranties, including"
                  " without limitation, implied warranties or conditions of merchantability, fitness"
                  " for a particular purpose, or non-infringement of intellectual property or other"
                  " violation of rights. Further, Exposys Data Labs does not warrant or make any "
                  "representations concerning the accuracy, likely results, or reliability of the use"
                  " of any materials on the Site or otherwise relating to such materials or on any sites linked to this site. ",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0),
            child: Container(
              height: h*0.08,
              width: w,
              child: Text("Limitations ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0),
            child: Container(
              height: h*0.38,
              width: w,
              child: Text("In no event Exposys Data Labs be liable for any damages (including, without "
                  "limitation, damages for loss of data or profit, or due to business interruption,) "
                  "arising out of the use or inability to use the materials on the Site, even if Exposys"
                  " Data Labs or a Exposys Data Labs authorized representative has been notified orally or"
                  " in writing of the possibility of such damage. Because some jurisdictions do not allow"
                  " limitations on implied warranties, or limitations of liability for consequential or incidental"
                  " damages, these limitations may not apply to you. ",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0),
            child: Container(
              height: h*0.08,
              width: w,
              child: Text("Governing Law",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0),
            child: Container(
              height: h*0.12,
              width: w,
              child: Text("Any claim relating to the Site shall be governed by the laws of the india without"
                  " regard to its conflict of law provisions. ",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0),
            child: Container(
              height: h*0.1,
              width: w,
              child: Text("REGISTRATION CONFIRMATION ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0),
            child: Container(
              height: h*0.4,
              width: w,
              child: Text("Any claim relating to the Site shall be governed by the laws of the india"
                  " without regard to its conflict of law provisions. It is essential that we have"
                  " your correct email address as we will email you an order confirmation upon successful"
                  " registration. You will also receive a Internship/freelancer Training/Training Program"
                  " Information Sheet BY EMAIL at least 2Days or one week prior to the scheduled dates of"
                  " your Live Internship/freelancer Training/Training Program Event. contact our office at"
                  " email hr@exposysdata. com and we will make sure to re-send it ",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0),
            child: Container(
              height: h*0.1,
              width: w,
              child: Text("NO REFUND POLICY FOR REGISTRATIONS",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0),
            child: Container(
              height: h*0.6,
              width: w,
              child: Text("Once paid, registration fees for the O.N.E. Experience, Live Internship/freelancer"
                  " Training/ Training Programs and other events are non-refundable. Any terms on this page"
                  " referring to the “Live Internship/freelancer Training/ Training Program(s)” also applies"
                  " to the O.N.E. Experience and other events by Exposys Data Labs. If a registrant desires"
                  " to reschedule his or her attendance at a Live Internship/ Training Program or event, a"
                  " registration is transferable to another Live Internship/ Training Program or event hosted"
                  " by Exposys Data Labs, its affiliates, subsidiaries, successors or assigns (“Exposys Data Labs”"
                  ", “we” or “us”) so long as registrant provides us with at least thirty (30) days written or electronic"
                  " (emailed) notice of the desire to transfer the registration. Your rescheduled Live Internship/freelancer"
                  " Training/Training Program or event must take place within Six (6) months from the original Live"
                  " Internship/freelancer Training/ Training Program or event date. ",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0),
            child: Container(
              height: h*0.1,
              width: w,
              child: Text("CANCELLATION/POSTPONEMENT/DISCOUNTED ENROLLMENT POLICY ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0),
            child: Container(
              height: h*0.6,
              width: w,
              child: Text("We reserve the right to cancel or postpone a O.N.E. Experience,"
                  " Live Internship/freelancer Training/ Training Program or related event(s)"
                  " in our sole discretion. If we cancel or postpone a Live/internship/ freelancer"
                  " Training/ Training Program or event, we will use reasonable efforts to reschedule"
                  " the cancelled or postponed Live Internship/freelancer Training/ Training Program "
                  "or event to within six (06) months from its original start date. Registration fees"
                  " paid by registrants for a cancelled or postponed Live Live Internship/freelancer "
                  "Training/ Training Program shall be applicable to the rescheduled Live Internship/freelancer"
                  " Training/ Training Program on a rupee for rupee basis only. In the event Exposys Data Labs "
                  "elects not to reschedule the cancelled Live Internship/freelancer Training/ Training Program or"
                  " event, registrant will be offered a refund. ",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                ),),
            ),
          ),
        ]
    )
    )
        )
    );
  }
}
