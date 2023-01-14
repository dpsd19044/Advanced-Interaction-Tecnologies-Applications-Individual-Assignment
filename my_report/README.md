# Lesson: Advanced Interaction Technologies & Applications

### First and Last Name: Dimitris Ioannis Kamperakis
### University Registration Number: dpsd19044
### GitHub Personal Profile: <a href="https://github.com/dpsd19044">Mhtsaki</a>

### Advanced Interaction Tecnologies & Applications Github Personal Repository: <a href="https://github.com/dpsd19044/Advanced-Interaction-Tecnologies-Applications-Individual-Assignment">ClIcK</a>

# Introduction
Στο μάθημα Προημένες Τεχνολογίες Αλληλεπίδρασης και Εφαρμογές ήρθα σε επαφή με τη γλώσσα και το προγραμματιστικό χώρο του  processing.
# Summary


# 1st Deliverable
1.Video Capture <br>
---------------------------
Για το πρώτο task: <br>
Διάβασα τα <a href="https://processing.org/tutorials/video#live-video">online tutorial</a> και
<a href="http://learningprocessing.com/examples/chp16/example-16-01-Capture">examplpe 16.01</a>. <br>
Κατέβασα τη βιβλιοθήκη "Vdeo Library for Processing 3" μέσω του Contribution Manager (όπως μ έδειχνε και o manager) 
στο Processing και όποτε το έτρεχα μου έβγαζε συνεχώς error. <br>
Στο PC <br>
![ERROR_PC](https://user-images.githubusercontent.com/101420117/199962483-14a08308-bf9c-4f43-b730-6cf3ab5acb26.png) <br>
Στο Laptop<br>
![ERRO_LAPTOP](https://user-images.githubusercontent.com/101420117/199962521-20ea49ad-1091-407d-8b52-dff76ec76ab5.png) <br>
Οπότε εμπιστεύτηκα το παράδειγμα <br>

2.Recorded Video <br>
---------------------------
Στο δεύτερο task xρησιμοποίησα το <a href="https://processing.org/tutorials/video#live-video"> step 5. Display the movie.</a> και τα προτινόμενα παραδείγματα των οδηγιών. <br>
Έκανα εισαγωγή ενα βίντο που είχα στα αρχεία μου και αποθηκέυσα το αρχείο .pde και .MOV στον ίδιο φάκελο. <br>

3.QR Code <br>
---------------------------
Κατέβασα το <a href="https://shiffman.net/p5/qrcode-processing/">Processing QRCode Library</a> και συνδίασα τις οδηγίες του μαζί με το <a href="http://learningprocessing.com/examples/chp15/example-15-01-drawimage">Draw Image 15.1</a>. <br>
Δημιούργησα το δικό μου QR Code μέσω του προτινόμενου <a href="https://qrcode.kaywa.com/">site</a>. <br>
![Screenshot (270)](https://user-images.githubusercontent.com/101420117/199996899-c5d5b7c6-9dfb-4ce7-94c1-c9765500a366.png)

4.QR Code - Camera Read <br>
---------------------------
Χρησιμοποίησα τον κώδικα QRCodeExample, έβαλα την εικόνα και προσάρμοσα τον κώδικα.<br>

5.Augmented Reality <br>
---------------------------
Κατέβααα την βιβλιοθήκη <a href="https://github.com/nyatla/NyARToolkit-for-Processing/releases">NyARToolkit</a> και όλα τα αρχεία που είχε μέσα της.<br>
Έφτιαξα τον φάκελο που έχει μέσα όλα τα DATA και την εικόνα που βγαίνει μεσω του scan <br> και χρησιμοποίησα το προτεινόμενο simpleLite παράδειγμα. <br>

# 2nd Deliverable
1.Background Removal<br>
---------------------------
Χρησιμοποίησα το Example 16-12 και ατικατέστησα το color(0,255,0) στο Pixels[loc] με το  backgroundReplace.pixels[loc]. Αντικατέστησα την εικόνα με το βίντεο μέσω του Movie BackgroundReplace.

2.Motion Detection<br>
---------------------------
Μελέτησα το  Example 16-11, Example 16-13 και το Exercise 16-7. Ουσιαστικά άλλαξα το float threshold se 100 και το χώμα του κύκλου σε ροζ.

3.Background Substraction <br>
---------------------------
Αρχικά κατέβασα την βιβλιοθήη <b> OpenCV for Processing <b>  μέσα του Processing και επεξεργάστηκα το παράδειγμα ackgroundSubstraction. Αντικατέστησα το βίντεο που υπήρχε εξαρχής στον κώδικα με το Cmaera Capture και άλλα ξα το χρώμα του περιγράμματος σε σκούρο μωβ. <br>

Ερώτηση: Ποια είναι τα πλεονεκτήματα και μειονεκτήματα της έτοιμης βιβλιοθήκης έναντι του κώδικα από το πρώτο ερώτημα; <br>
Ουσιατικά η έτοιμη βιβλιοθήκη και ο κώδικας αυτός είναι πιο εύκολο να διαβαστεί και να επεξεργαστεί. Το δεύτερο πρόγραμμα ανιχνεύει καλύτερα τον χρήστη αλλα και τα δυο χριάζονται σχετικά καλό περιβάλλον για να λειτουργήσουν (όχι πολλα μπερδεμ΄να χρώματα και καλό φωτισμό). Επίσης το καλό με τη βιβλιοθήλη είναι ότι μπορείς να χρησιμοποιείς τον ίδιο κωδικα εύκολα και να την εντάσεις όπου θές.

4.Object Tracking <br>
---------------------------
Μελέτησα τα Example 16-11, Example 9-8, Exercise 16-5. Κατέληξα στο να χρησιμοποιώ τον κώδικα τη άσκησης στον οποίο δεν άλλαξα κάτι, εκτός από την κλάση snake, στην οποία πρόσθεσα τα χαρκτηριστικά των κοίκλων στο void display, οι τιμές  το Fill θα εναλλάσονται απο το 0-255.<br>

Ερώτηση: Σε σχέση με το παραδοσιακό ποντίκι ποια είναι τα πλεονεκτήματα και ποια τα μειονεκτήματα αυτής της τεχνικής ελέγχου ενός ή περισσότερων σημείων σε μια οθόνη? <br>
Το παραδοσιακό ποντίκι ανταποκρίνεται πολυ πιο ξεκάθαρα σε σχέση με την εξαποστάσεως κίνηση. Βέβαια η τεχνική αυτή έζει περισσότερο ενδιαφέρον γιατι αλληλεπιδράς μτον υπολογιστή έχοντας απόσταση απο τον εξοπλισμό του και κάνεις πιο φυσικές κινήσεις σε σχέση με αυτές του ποντικιού, δηλαδή αν αυτή η αλληλεπίδραση εισαγόταν σε κάποιο σύστημα που θα χρησιμοποιούταν από κάποιο άτομο που δεν είναι εξοικειωμένο με το εξωτερικό περιβάλλον του Η/Υ θα του ήταν πολύ πιο έυκολο άφου θα χρησιμοποιούσε κινήσεις που κάνιε καθημερινά στη ζωή του.

# 3rd Deliverable 
1.reacTIVation – Installation <br>
-------------------------------------
Ακολούθησα τις οδηγίες με την σειρά που είναι καταγεγραμένες, κατέβασα όλα τα προτεινόμενα αρχεία και εκτέλεσα το παράδειγμα ΤUIOdemo με τη χρήση Simulator αφού παρακολούθησα το <a href="https://www.youtube.com/watch?v=tJ0aZzST-N4&ab_channel=Roc%C3%ADoM%C3%A1rquez">βίντεο</a>.
Μετέφερα το φάκελο TUIO χειροκίνητα στον φάκελο libraries του processing μου και απο το παράδειγμα TuioDump πήρα τον κώδικα:   println("add obj "+tobj.getSymbolID()+" ("+tobj.getSessionID()+") "+tobj.getX()+" "+tobj.getY()+" "+tobj.getAngle()); <br>
και το πρόσθεσα στο TuioDemo.

![SimulatorRuns](https://user-images.githubusercontent.com/101420117/212293729-6a79b708-d0cf-4f9e-93c5-26d058739f03.png) <br>

2.Image Processing Application <br>
---------------------------------
Ουσιαστικά χρησιμοποίησα το παράδειγμα TUIO demo, άλλαξα το size σε (900,900) και πρόσθεσα τρείς εικόνες από το Laptop μου που μείωσα το μέγεθός τους στο μσό. Μέσω του <a href="https://processing.org/reference/filter_.html">site</a> έμαθα τις δυνατότητες που μου δίνονται για την επιλόγη των φίλτρων και πως να τα εισάγω στον κώδικα. Δημιούργησα τα ids για τα fiducial μέσα σε ξεχωριστά if για ta 0,1 images & 2,3,4 filters. <br>
Αρχικά είχα κατεβάσει το reacTIVision-1.5.1-src το οποίο δεν είχε το reacTIVision.exe και μετά από ψάξημο και κατα τύχη κατέβασα το reacTIVision για Window 7 παρόλο που έχω τα 11 και λειτούργησε κανονικά. <br>
0_IMAGE
![00IMAGE](https://user-images.githubusercontent.com/101420117/212354612-61827b9b-6754-4e3b-8c66-030d022cac5d.png)

1_IMAGE
  ![01IMAGE](https://user-images.githubusercontent.com/101420117/212354542-2c0ec6a7-15eb-4edc-9088-3ddfce00dcd8.png)
  
GRAY FILTER
![GRAY](https://user-images.githubusercontent.com/101420117/212354693-c1b073bb-189e-4af7-a821-b287cb5480bb.png) 

INVERTED FILTER
![INVERTED](https://user-images.githubusercontent.com/101420117/212354742-bde1cf9a-607d-4d7e-8f42-6163d2a6e8a7.png)

THRESHOLD FILTER
![THRESHOLD](https://user-images.githubusercontent.com/101420117/212354772-888e5bda-9d99-4de1-842a-719656acc4e7.png)

# Bonus 1 
Σε συνεργασία με την <a href="https://github.com/cgalani">Χριστίνα Γαλάνη</a> και την <a href="https://github.com/Kuletsi">Ελένη Κουλέτση</a><br>

1. SimpleOpenNI – Installation<br>
---------------------------------
Για την εγκατάσταση προσπαθήσαμε παρά πολλά πράγματα, ακόμα πήγαμε και την κάμερα μια βόλτα μέχρι την Αθήνα, αλλά που τύχη. Τελικά καταφέραμε να ανοίξουμε τα παραδείγματα στις αίθουσες του εργαστηρίου χρησιμοποιώντας έναν, ανορθόδοξο μεν αλλά αποτελεσματικό τρόπο. Ο συγγραφέας του report αυτόβουλα έχει αποφασίσει να μην μοιραστεί με το κοινό αυτόν τον τρόπο. <br>
  
2. Kinect – Nearest Point Tracking<br>
---------------------------------
Για το πρώτο παραδοτέο, μπήκαμε στο βιβλίο για να δούμε το παράδειγμα. Τρέξαμε το παράδειγμα για να δούμε ότι δουλεύει κανονικά. Δούλευε κανονικά. Στην συνέχεια πήραμε το <a href="http://learningprocessing.com/examples/chp09/example-09-08-mouse-history">παράδειγμα 9-8</a>, όπως και τους δικούς μας κωδικές από το αντίστοιχο κομμάτι του παραδοτέου 2, τα συνδυάσαμε και τα τρέξαμε. Να σημειωθεί πως κάπου στην πορεία σταμάτησε να μας δουλεύει η κάμερα και ψάχναμε άλλον υπολογιστή(παλι)(κάποιος μας ματιασε μάλλον).


https://user-images.githubusercontent.com/101420117/212445018-04f2eb8d-99a2-409b-872d-254f6d0a4a3d.mp4


 
3. Kinect – Background Removal <br>
---------------------------------
Για το δεύτερο κομμάτι του παραδοτέου μελετήσαμε τα ανάλογα κομμάτια όπως είχε αναφερθεί και στην εκφώνηση. Ανοίξαμε το έτοιμο παράδειγμα Remove_Background_RGB. Ψάξαμε πως να αντικαταστήσουμε το μαύρο background με μια εικόνα, συγκεκριμένα από το δεύτερο παραδοτέο αλλά είχανε κάποια προβλήματα. Τελικά βρήκαμε από το Processing Forum <a href="https://forum.processing.org/two/discussion/4057/kinect-background-removal-with-video.html">αυτή</a> την ανάρτηση που μας βοήθησε να υλοποιήσουμε το παραδοτέο. Επίσης βάλαμε και για background την εικόνα που είχαμε επιλέξει (background (backgroundImage)) διότι οι διαστάσεις της ήταν μεγαλύτερες (το y ήταν μεγαλύτερο) από τις διαστάσεις της κάμερας και εξεχε ενα μαύρο πλαίσιο.<br>
  


https://user-images.githubusercontent.com/101420117/212445053-70569993-282e-41f3-b9e1-9926dfef9578.mp4



Ερώτηση: Τι διαφορά έχει η χρήση της έτοιμης βιβλιοθήκης για την αφαίρεση του υποβάθρου σε σχέση με τον τρόπο που αφαιρέσαμε το υπόβαθρο στο 2ο παραδοτέο; <br>
Στο δεύτερο παραδοτέο αφαιρέσαμε το background με δυο τρόπους, γράφοντας όλο τον κώδικα από την αρχή και με την χρήση μιας έτοιμης βιβλιοθήκης. Ο τρίτος τρόπος, χρησιμοποιώντας την OpenNI βιβλιοθήκη και την Kinect είναι ο πιο precise και δίνει τα καλύτερα αποτελέσματα διότι έχει και πολύ πιο εξειδικευμένη τεχνολογία και διακρίνει ανθρώπινες φιγούρες με μεγάλη ακρίβεια. Γενικός, Με την χρήση της βιβλιοθήκης δημιουργούμε την ίδια λύση χρησιμοποιώντας πολύ λιγότερες γραμμές κώδικα. Ο κώδικας επίσης είναι πιο ευανάγνωστος, ευνόητος και πιο εύκολα διαχειρίσιμος. Πρακτικα η χρήση της βιβλιοθήκης μας βοηθάει να εντάξουμε τον κώδικα μέσα σε ένα μεγαλύτερο πρόγραμμα πιο εύκολα. Από την άλλη πλευρά, γράφοντας τον κώδικα από την αρχή αποκτάμε μια πιο ολιστική εικόνα ως προς την λειτουργία του, δηλαδή καταλαβαίνουμε τι ακριβώς κάνει ο κώδικας. Επίσης για τον ίδιο λόγο ο κώδικας σε αυτή την μορφή μας δίνει περισσότερες επιλογές, είναι πιο versatile. <br>
  
4. Kinect – Right-Hand Tracking <br>
---------------------------------
Για το τρίτο κομμάτι του παραδοτέου, πήραμε τον έτοιμο κώδικα από <a href="http://articlesbyaphysicist.com/simpleopenni_windows_2.html">το άρθρο</a> και αλλάξαμε την παράμετρο SimpleOpenNI.SKEL_LEFT_HAND σε SimpleOpenNI.SKEL_RIGHT_HAND. Στην συνέχεια αντί για την έλλειψη προσθέσαμε το snake όπως το είχαμε κάνει στο δεύτερο παραδοτέο. Δοκιμάσαμε να φτιάξουμε ξεχωριστό pde και απλός να καλέσουμε την συνάρτηση snake () στο if statement αντί για την έλλειψη αλλά είχαμε πρόβλημα με τις παραμέτρους convertedRightHand.x και convertedRightHand.y. Προσπαθήσαμε να τις κάνουμε convert σε integer η να αλλάξουμε την συνάρτηση snake αλλά δεν τα καταφέραμε. Τελικά το κάναμε όλο σε ένα αρχείο. Το μόνο που αλλάξαμε είναι πως αντί για newX και newY βάλαμε convertedRightHand.x και convertedRightHand.y. Συγκεκριμένα χρησιμοποιήσαμε το <a href="https://github.com/cgalani/Advanced-Interaction-Tecnologies-Applications-Individual Assignment/tree/main/source_code/2nd_Deliverable/4.%20Object%20Tracking/ObjectTracking">Object tracking της cgalani</a>, και απλώς αλλάξαμε λίγο τα χρώματα και το μέγεθος από το αστέρι.<br>
![211913781-bf029be9-4858-41cb-b3bf-431e0b607f26](https://user-images.githubusercontent.com/101420117/212417578-7144040b-00da-4da6-a8d4-f839d2e2e8a3.mp4)<br>

# Bonus 2 
Σε συνεργασία με την <a href="https://github.com/cgalani">Χριστίνα Γαλάνη</a> και τhν <a href="https://github.com/Kuletsi">Ελένη Κουλέτση</a> <br>
---------------------------------
Αρχικά ανοίξαμε τα παραδείγματα που είχαν αναφερθεί στην εκφώνηση, δηλαδή τα παραδείγματα 9 και 10 από το βιβλίο Making things see. Μελετήσαμε τον κώδικα και επίσης και τα υπόλοιπα αρχεία που βρισκόντουσαν μέσα στα repositories. <br>
Είδαμε ότι τα αρχεία για τον ήχο ήταν σε μορφή wav, και ψάξαμε στο Ίντερνετ για royalty free ήχους σε αυτή την μορφή. Αποφασίσαμε να ασχοληθούμε με τους ήχους που κάνουν οι γάτες και οι σκύλοι και να δημιουργήσουμε ένα διαφορετικό «μουσικό όργανο». Έτσι έχουμε βάλει 3 ήχους με γάτες και 3 ήχους με σκύλους. Φτιάξαμε και την διάταξη όπως και το μέγεθος των hotspots, ώστε να χωρέσουν και τα 6.<br> 
  
![212369509-2e10e38f-bdcb-4249-a6c7-30eb12e043d5](https://user-images.githubusercontent.com/101420117/212445102-0aca0749-6935-40d1-ae5e-3817f5a44caf.png)


Βίντεο της δουλειάς μας μέχρι το σημείο που το έχουμε υλοποιήσει μπορείτε να δείτε <a href="https://drive.google.com/drive/folders/17mGZIruLGm0sGXsbVyF0MyDogpD7yDgY"> εδώ </a>. <br>
Επίσης παρατηρήσαμε πως η εικόνα του παραδείγματος ήταν μια απεικόνιση του βάθους του περιβάλλοντος και ψάξαμε πως να έχει input από την κάμερα. Προσπαθήσαμε να προσαρμόσουμε κομμάτια του κώδικα από το προηγούμενο παραδοτέο bonus, αλλά τελικά δεν τα καταφέραμε. Επίσης θέλαμε αντί για τα κουτάκια να εμφανίζονται png εικόνες από γάτες και σκύλους, που καταφέραμε έως ένα σημείο αλλά είχαμε θέμα με το coordinate system, και επίσης μας έβγαιναν ανάποδα. Λόγο έλλειψης χρόνου δεν το συνεχίσαμε την υλοποίηση του bonus2.


# Conclusions
Το Processing είναι αρκετά ενδιαφέρον χώρος για πιο δημιουργικά projects. Αυτό το ένιωσα πιο πολυ στα εργαστήριο του μαθήματος και με τα έτοιμα παραδείγματα, επειδη τα περισσότερα παραδοτέα δεν κατάφερνα να τα υλοποιήσω ολοκληρωτικά. Είχα αρκετα προβλήματα με τις βιβλιοθήκες αλλα το τελευταίο παραδοτέο (3) βγήκε πιο εύκολα και είναι σχετικά το μοναδικό που έφτασε στο απαιτούμενο σημείο. Ήταν ενδιαφέρον που οι εργασίες άφηναν περιθώριο να βάλλουμε το δικό μας χαρακτηρα μέσα (φωτογραφίες, βίντεο, ήχος) και μέσω του bonus να χρησιμοποιήσω την kinect. To processing έχει μέτρια δυσκολία, ένιωσα πως θέλει αρκετή προσοσχή στα σημεία εγκατάστασης των βιβλιοθηκών, κυρίως.   


# Sources
  <a href="https://processing.org/tutorials/video#live-video">online tutorial</a> <br>
  <a href="http://learningprocessing.com/examples/chp16/example-16-01-Capture">examplpe 16.01</a> <br>
  <a href="https://processing.org/tutorials/video#live-video"> step 5. Display the movie.</a> <br>
  <a href="https://shiffman.net/p5/qrcode-processing/">Processing QRCode Library</a> <br>
  <a href="http://learningprocessing.com/examples/chp15/example-15-01-drawimage">Draw Image 15.1</a> <br>
  <a href="https://qrcode.kaywa.com/">kaywa.com</a> <br>
  <a href="https://github.com/nyatla/NyARToolkit-for-Processing/releases">NyARToolkit</a> <br>
  <a href="https://www.youtube.com/watch?v=tJ0aZzST-N4&ab_channel=Roc%C3%ADoM%C3%A1rquez">βίντεο TUIO Demo + TUIO Simulator</a> <br>
  <a href="https://processing.org/reference/filter_.html">Filters</a> <br>

