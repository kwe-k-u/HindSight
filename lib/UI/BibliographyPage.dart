import 'package:flutter/material.dart';


class BiblographyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            child: ListView(
              padding: EdgeInsets.all(12.0),

            children: [

              Text('Johnson, Samuel."Taxation No Tyranny; an Answer to the Resolutions and Address'
                  'of the American Congress[1775]". The works of Samuel Johnson, LL.D.,2011, pp. 93-144,'
                  'doi:'),
              Divider(thickness: 1,),




              Text("Owens, Deidre Cooper. 'Black Women's Experiences in Slavery and Medicine.' "
                  "Medical Bondage, University of Georgia Press, 2018, pp. 42–72, doi:10.2307/j.ctt1pwt69x.7.",
              ),
              Divider(thickness: 1,),



              Text('Renwick, William. Le Code Noir Published by : The University of '
                  'Chicago Press on Behalf of the Association for the Study of African'
                  ' American Life and History Stable URL : Https://Www.Jstor.Org/Stable/2714119.'
                  ' no. 3, 2020, pp. 321–29.'),
              Divider(thickness: 1,),

              Text('Rugemer, Edward B. “The Development of Mastery and Race in the '
                  'Comprehensive Slave Codes of the Greater Caribbean during the '
                  'Seventeenth Century.” William and Mary Quarterly, vol. 70, no. 3,'
                  ' July 2013, pp. 429–58, doi:10.5309/willmaryquar.70.3.0429.'),
              Divider(thickness: 1,),

              Text('Society, Virginia Historical, and The Virginia Magazine. '
                  'Review : Headrights and Head Counts : A Review Article Reviewed '
                  'Work ( s ): White , Red , and Black : The Seventeenth-Century '
                  'Virginian by Wesley Frank Craven Review by : Edmund S . Morgan '
                  'Source : The Virginia Magazine of History and Biography , Jul .,'
                  ' 1. no. 3, 1972.'),
              Divider(thickness: 1,),

              Text('Smallwood, Stephanie E. Saltwater Slavery : a Middle Passage from Africa to American Diaspora. Cambridge, Mass. :Harvard University Press, 2007.'),
              Divider(thickness: 1,),

              Text('Szasz, Ferenc M. “The New-York Slave Revolt of 1741: A '
                  'Re-Examination.” New York History, vol. 48, no. 3, July 1967, '
                  'p. 215, http://www.jstor.org.elibraryashesi.remotexs.co/stable/'
                  '23162951?Search=yes&resultItemClick=true&searchText=New+york+slave'
                  '+code&searchUri=%2Faction%2FdoBasicSearch%3FQuery%3DNew%2Byork%2Bslav'
                  'e%2Bcode%26acc%3Don%26wc%3Don%26fc%3Doff%26group%3Dnone&ab_segmen.'),
              Divider(thickness: 1,),

              Text("The Guardian \"Haiti: A Long Descent to Hell\". "
                  "https://www.theguardian.com/world/2010/jan/14/haiti-history-"
                  "earthquake-disaster. Accessed 18 Nov. 2020."),
              Divider(thickness: 1,),


            ],
            ),
          ),
        ),
      ),
    );
  }
}
