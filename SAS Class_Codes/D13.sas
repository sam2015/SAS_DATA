/*SAS MACRO*/
PROC UNIVARIATE DATA = SASHELP.PRDSAL2 
NEXTROBS = 20;VAR ACTUAL;RUN;
%MACRO UNI(DT,OB,VA);
PROC UNIVARIATE DATA = &DT
NEXTROBS = &OB;VAR &VA;RUN;%MEND;
/*CALL THE MACRO*/
%UNI(SASHELP.AIR,15,AIR);
%UNI(SASHELP.CLASS,7,AGE);
%MACRO PRT(NEW,OLD,N,V1,V2,V3);
DATA &NEW;SET &OLD;RUN;
PROC PRINT DATA = &NEW (OBS = &N);
VAR &V1 &V2 &V3;RUN;%MEND;
%PRT(B79.D,SASHELP.PRDSAL2,25,
COUNTRY,PRODTYPE,ACTUAL);
/*ARRAY*/
DATA B79.A;SET SASHELP.CLASS;
ARRAY V(3) AGE HEIGHT WEIGHT;
ARRAY L(3) LOG_AGE LOG_HT LOG_WT;
ARRAY S(3) SQR_AGE SQR_HT SQR_WT;
ARRAY ST(3) SQRT_AGE SQRT_HT SQRT_WT;
ARRAY IN(3) INV_AGE INV_HT INV_WT;
DO I = 1 TO 3;
L(I) = LOG(V(I));
S(I) = V(I)**2;
ST(I) = V(I)**0.5;
IN(I) = 1/V(I);
END;DROP I;RUN;
ODS HTML FILE = "C:\OT\A.XLS";
PROC MEANS DATA = SASHELP.MON1001 N;RUN;
ODS HTML CLOSE;
DATA B79.A1;SET SASHELP.MON1001;
ARRAY V(406) 
S0387
S0388
S0389
S0390
S0391
S0393
S0394
S0395
S0396
S0397
S0398
S0401
S0403
S0404
S0405
S0406
S0407
S0409
S0410
S0412
S0413
S0414
S0415
S0416
S0417
S0418
S0419
S0420
S0421
S0422
S0423
S0426
S0427
S0428
S0429
S0434
S0435
S0436
S0437
S0438
S0439
S0440
S0441
S0442
S0444
S0445
S0446
S0448
S0449
S0450
S0451
S0452
S0453
S0454
S0455
S0456
S0457
S0458
S0459
S0460
S0461
S0462
S0463
S0464
S0465
S0466
S0467
S0468
S0469
S0470
S0471
S0472
S0473
S0474
S0475
S0476
S0477
S0479
S0480
S0481
S0486
S0487
S0488
S0489
S0490
S0491
S0492
S0493
S0495
S0496
S0497
S0498
S0499
S0501
S0503
S0504
S0505
S0506
S0507
S0508
S0509
S0510
S0511
S0512
S0513
S0514
S0515
S0516
S0520
S0521
S0522
S0523
S0524
S0525
S0526
S0527
S0528
S0529
S0533
S0534
S0536
S0537
S0538
S0539
S0540
S0541
S0542
S0543
S0544
S0545
S0546
S0547
S0548
S0552
S0554
S0557
S0559
S0560
S0562
S0563
S0565
S0566
S0567
S0569
S0570
S0571
S0572
S0573
S0574
S0575
S0576
S0577
S0578
S0579
S0580
S0581
S0584
S0585
S0587
S0588
S0589
S0590
S0591
S0592
S0593
S0594
S0595
S0596
S0597
S0598
S0599
S0600
S0601
S0605
S0606
S0607
S0608
S0609
S0610
S0611
S0613
S0614
S0615
S0616
S0617
S0618
S0619
S0620
S0621
S0622
S0623
S0624
S0625
S0626
S0627
S0628
S0629
S0630
S0631
S0632
S0633
S0634
S0635
S0640
S0641
S0642
S0643
S0644
S0645
S0646
S0647
S0648
S0649
S0652
S0653
S0655
S0657
S0658
S0659
S0661
S0662
S0663
S0664
S0665
S0667
S0668
S0669
S0670
S0671
S0672
S0673
S0674
S0675
S0676
S0678
S0680
S0681
S0683
S0684
S0687
S0688
S0690
S0692
S0694
S0695
S0697
S0698
S0699
S0700
S0701
S0702
S0703
S0704
S0705
S0706
S0710
S0712
S0714
S0715
S0716
S0718
S0731
S0732
S0733
S0734
S0735
S0736
S0737
S0738
S0739
S0740
S0741
S0742
S0743
S0744
S0745
S0746
S0747
S0748
S0749
S0750
S0751
S0752
S0753
S0754
S0755
S0756
S0757
S0758
S0759
S0760
S0761
S0762
S0763
S0765
S0766
S0767
S0768
S0769
S0770
S0771
S0780
S0783
S0784
S0785
S0786
S0787
S0789
S0790
S0791
S0792
S0793
S0794
S0795
S0796
S0798
S0799
S0800
S0801
S0802
S0803
S0811
S0822
S0825
S0826
S0835
S0840
S0841
S0842
S0847
S0850
S0851
S0852
S0853
S0854
S0857
S0859
S0860
S0861
S0862
S0864
S0865
S0866
S0867
S0868
S0869
S0871
S0872
S0873
S0875
S0876
S0877
S0878
S0879
S0897
S0898
S0899
S0900
S0901
S0903
S0904
S0905
S0906
S0907
S0908
S0909
S0910
S0911
S0912
S0913
S0914
S0927
S0931
S0932
S0933
S0934
S0936
S0937
S0938
S0939
S0940
S0952
S0953
S0954
S0955
S0956
S0957
S0958
S0978
S0980
S0981
S0982
S0983
S0984
S0985
S0986
S0990
S0991
S0992
S0993
S0994
S0995
S0997
S0998
S0999
S1001
;
ARRAY L(406) 
LOG_S0387
LOG_S0388
LOG_S0389
LOG_S0390
LOG_S0391
LOG_S0393
LOG_S0394
LOG_S0395
LOG_S0396
LOG_S0397
LOG_S0398
LOG_S0401
LOG_S0403
LOG_S0404
LOG_S0405
LOG_S0406
LOG_S0407
LOG_S0409
LOG_S0410
LOG_S0412
LOG_S0413
LOG_S0414
LOG_S0415
LOG_S0416
LOG_S0417
LOG_S0418
LOG_S0419
LOG_S0420
LOG_S0421
LOG_S0422
LOG_S0423
LOG_S0426
LOG_S0427
LOG_S0428
LOG_S0429
LOG_S0434
LOG_S0435
LOG_S0436
LOG_S0437
LOG_S0438
LOG_S0439
LOG_S0440
LOG_S0441
LOG_S0442
LOG_S0444
LOG_S0445
LOG_S0446
LOG_S0448
LOG_S0449
LOG_S0450
LOG_S0451
LOG_S0452
LOG_S0453
LOG_S0454
LOG_S0455
LOG_S0456
LOG_S0457
LOG_S0458
LOG_S0459
LOG_S0460
LOG_S0461
LOG_S0462
LOG_S0463
LOG_S0464
LOG_S0465
LOG_S0466
LOG_S0467
LOG_S0468
LOG_S0469
LOG_S0470
LOG_S0471
LOG_S0472
LOG_S0473
LOG_S0474
LOG_S0475
LOG_S0476
LOG_S0477
LOG_S0479
LOG_S0480
LOG_S0481
LOG_S0486
LOG_S0487
LOG_S0488
LOG_S0489
LOG_S0490
LOG_S0491
LOG_S0492
LOG_S0493
LOG_S0495
LOG_S0496
LOG_S0497
LOG_S0498
LOG_S0499
LOG_S0501
LOG_S0503
LOG_S0504
LOG_S0505
LOG_S0506
LOG_S0507
LOG_S0508
LOG_S0509
LOG_S0510
LOG_S0511
LOG_S0512
LOG_S0513
LOG_S0514
LOG_S0515
LOG_S0516
LOG_S0520
LOG_S0521
LOG_S0522
LOG_S0523
LOG_S0524
LOG_S0525
LOG_S0526
LOG_S0527
LOG_S0528
LOG_S0529
LOG_S0533
LOG_S0534
LOG_S0536
LOG_S0537
LOG_S0538
LOG_S0539
LOG_S0540
LOG_S0541
LOG_S0542
LOG_S0543
LOG_S0544
LOG_S0545
LOG_S0546
LOG_S0547
LOG_S0548
LOG_S0552
LOG_S0554
LOG_S0557
LOG_S0559
LOG_S0560
LOG_S0562
LOG_S0563
LOG_S0565
LOG_S0566
LOG_S0567
LOG_S0569
LOG_S0570
LOG_S0571
LOG_S0572
LOG_S0573
LOG_S0574
LOG_S0575
LOG_S0576
LOG_S0577
LOG_S0578
LOG_S0579
LOG_S0580
LOG_S0581
LOG_S0584
LOG_S0585
LOG_S0587
LOG_S0588
LOG_S0589
LOG_S0590
LOG_S0591
LOG_S0592
LOG_S0593
LOG_S0594
LOG_S0595
LOG_S0596
LOG_S0597
LOG_S0598
LOG_S0599
LOG_S0600
LOG_S0601
LOG_S0605
LOG_S0606
LOG_S0607
LOG_S0608
LOG_S0609
LOG_S0610
LOG_S0611
LOG_S0613
LOG_S0614
LOG_S0615
LOG_S0616
LOG_S0617
LOG_S0618
LOG_S0619
LOG_S0620
LOG_S0621
LOG_S0622
LOG_S0623
LOG_S0624
LOG_S0625
LOG_S0626
LOG_S0627
LOG_S0628
LOG_S0629
LOG_S0630
LOG_S0631
LOG_S0632
LOG_S0633
LOG_S0634
LOG_S0635
LOG_S0640
LOG_S0641
LOG_S0642
LOG_S0643
LOG_S0644
LOG_S0645
LOG_S0646
LOG_S0647
LOG_S0648
LOG_S0649
LOG_S0652
LOG_S0653
LOG_S0655
LOG_S0657
LOG_S0658
LOG_S0659
LOG_S0661
LOG_S0662
LOG_S0663
LOG_S0664
LOG_S0665
LOG_S0667
LOG_S0668
LOG_S0669
LOG_S0670
LOG_S0671
LOG_S0672
LOG_S0673
LOG_S0674
LOG_S0675
LOG_S0676
LOG_S0678
LOG_S0680
LOG_S0681
LOG_S0683
LOG_S0684
LOG_S0687
LOG_S0688
LOG_S0690
LOG_S0692
LOG_S0694
LOG_S0695
LOG_S0697
LOG_S0698
LOG_S0699
LOG_S0700
LOG_S0701
LOG_S0702
LOG_S0703
LOG_S0704
LOG_S0705
LOG_S0706
LOG_S0710
LOG_S0712
LOG_S0714
LOG_S0715
LOG_S0716
LOG_S0718
LOG_S0731
LOG_S0732
LOG_S0733
LOG_S0734
LOG_S0735
LOG_S0736
LOG_S0737
LOG_S0738
LOG_S0739
LOG_S0740
LOG_S0741
LOG_S0742
LOG_S0743
LOG_S0744
LOG_S0745
LOG_S0746
LOG_S0747
LOG_S0748
LOG_S0749
LOG_S0750
LOG_S0751
LOG_S0752
LOG_S0753
LOG_S0754
LOG_S0755
LOG_S0756
LOG_S0757
LOG_S0758
LOG_S0759
LOG_S0760
LOG_S0761
LOG_S0762
LOG_S0763
LOG_S0765
LOG_S0766
LOG_S0767
LOG_S0768
LOG_S0769
LOG_S0770
LOG_S0771
LOG_S0780
LOG_S0783
LOG_S0784
LOG_S0785
LOG_S0786
LOG_S0787
LOG_S0789
LOG_S0790
LOG_S0791
LOG_S0792
LOG_S0793
LOG_S0794
LOG_S0795
LOG_S0796
LOG_S0798
LOG_S0799
LOG_S0800
LOG_S0801
LOG_S0802
LOG_S0803
LOG_S0811
LOG_S0822
LOG_S0825
LOG_S0826
LOG_S0835
LOG_S0840
LOG_S0841
LOG_S0842
LOG_S0847
LOG_S0850
LOG_S0851
LOG_S0852
LOG_S0853
LOG_S0854
LOG_S0857
LOG_S0859
LOG_S0860
LOG_S0861
LOG_S0862
LOG_S0864
LOG_S0865
LOG_S0866
LOG_S0867
LOG_S0868
LOG_S0869
LOG_S0871
LOG_S0872
LOG_S0873
LOG_S0875
LOG_S0876
LOG_S0877
LOG_S0878
LOG_S0879
LOG_S0897
LOG_S0898
LOG_S0899
LOG_S0900
LOG_S0901
LOG_S0903
LOG_S0904
LOG_S0905
LOG_S0906
LOG_S0907
LOG_S0908
LOG_S0909
LOG_S0910
LOG_S0911
LOG_S0912
LOG_S0913
LOG_S0914
LOG_S0927
LOG_S0931
LOG_S0932
LOG_S0933
LOG_S0934
LOG_S0936
LOG_S0937
LOG_S0938
LOG_S0939
LOG_S0940
LOG_S0952
LOG_S0953
LOG_S0954
LOG_S0955
LOG_S0956
LOG_S0957
LOG_S0958
LOG_S0978
LOG_S0980
LOG_S0981
LOG_S0982
LOG_S0983
LOG_S0984
LOG_S0985
LOG_S0986
LOG_S0990
LOG_S0991
LOG_S0992
LOG_S0993
LOG_S0994
LOG_S0995
LOG_S0997
LOG_S0998
LOG_S0999
LOG_S1001
;
ARRAY S(406) 
SQR_S0387
SQR_S0388
SQR_S0389
SQR_S0390
SQR_S0391
SQR_S0393
SQR_S0394
SQR_S0395
SQR_S0396
SQR_S0397
SQR_S0398
SQR_S0401
SQR_S0403
SQR_S0404
SQR_S0405
SQR_S0406
SQR_S0407
SQR_S0409
SQR_S0410
SQR_S0412
SQR_S0413
SQR_S0414
SQR_S0415
SQR_S0416
SQR_S0417
SQR_S0418
SQR_S0419
SQR_S0420
SQR_S0421
SQR_S0422
SQR_S0423
SQR_S0426
SQR_S0427
SQR_S0428
SQR_S0429
SQR_S0434
SQR_S0435
SQR_S0436
SQR_S0437
SQR_S0438
SQR_S0439
SQR_S0440
SQR_S0441
SQR_S0442
SQR_S0444
SQR_S0445
SQR_S0446
SQR_S0448
SQR_S0449
SQR_S0450
SQR_S0451
SQR_S0452
SQR_S0453
SQR_S0454
SQR_S0455
SQR_S0456
SQR_S0457
SQR_S0458
SQR_S0459
SQR_S0460
SQR_S0461
SQR_S0462
SQR_S0463
SQR_S0464
SQR_S0465
SQR_S0466
SQR_S0467
SQR_S0468
SQR_S0469
SQR_S0470
SQR_S0471
SQR_S0472
SQR_S0473
SQR_S0474
SQR_S0475
SQR_S0476
SQR_S0477
SQR_S0479
SQR_S0480
SQR_S0481
SQR_S0486
SQR_S0487
SQR_S0488
SQR_S0489
SQR_S0490
SQR_S0491
SQR_S0492
SQR_S0493
SQR_S0495
SQR_S0496
SQR_S0497
SQR_S0498
SQR_S0499
SQR_S0501
SQR_S0503
SQR_S0504
SQR_S0505
SQR_S0506
SQR_S0507
SQR_S0508
SQR_S0509
SQR_S0510
SQR_S0511
SQR_S0512
SQR_S0513
SQR_S0514
SQR_S0515
SQR_S0516
SQR_S0520
SQR_S0521
SQR_S0522
SQR_S0523
SQR_S0524
SQR_S0525
SQR_S0526
SQR_S0527
SQR_S0528
SQR_S0529
SQR_S0533
SQR_S0534
SQR_S0536
SQR_S0537
SQR_S0538
SQR_S0539
SQR_S0540
SQR_S0541
SQR_S0542
SQR_S0543
SQR_S0544
SQR_S0545
SQR_S0546
SQR_S0547
SQR_S0548
SQR_S0552
SQR_S0554
SQR_S0557
SQR_S0559
SQR_S0560
SQR_S0562
SQR_S0563
SQR_S0565
SQR_S0566
SQR_S0567
SQR_S0569
SQR_S0570
SQR_S0571
SQR_S0572
SQR_S0573
SQR_S0574
SQR_S0575
SQR_S0576
SQR_S0577
SQR_S0578
SQR_S0579
SQR_S0580
SQR_S0581
SQR_S0584
SQR_S0585
SQR_S0587
SQR_S0588
SQR_S0589
SQR_S0590
SQR_S0591
SQR_S0592
SQR_S0593
SQR_S0594
SQR_S0595
SQR_S0596
SQR_S0597
SQR_S0598
SQR_S0599
SQR_S0600
SQR_S0601
SQR_S0605
SQR_S0606
SQR_S0607
SQR_S0608
SQR_S0609
SQR_S0610
SQR_S0611
SQR_S0613
SQR_S0614
SQR_S0615
SQR_S0616
SQR_S0617
SQR_S0618
SQR_S0619
SQR_S0620
SQR_S0621
SQR_S0622
SQR_S0623
SQR_S0624
SQR_S0625
SQR_S0626
SQR_S0627
SQR_S0628
SQR_S0629
SQR_S0630
SQR_S0631
SQR_S0632
SQR_S0633
SQR_S0634
SQR_S0635
SQR_S0640
SQR_S0641
SQR_S0642
SQR_S0643
SQR_S0644
SQR_S0645
SQR_S0646
SQR_S0647
SQR_S0648
SQR_S0649
SQR_S0652
SQR_S0653
SQR_S0655
SQR_S0657
SQR_S0658
SQR_S0659
SQR_S0661
SQR_S0662
SQR_S0663
SQR_S0664
SQR_S0665
SQR_S0667
SQR_S0668
SQR_S0669
SQR_S0670
SQR_S0671
SQR_S0672
SQR_S0673
SQR_S0674
SQR_S0675
SQR_S0676
SQR_S0678
SQR_S0680
SQR_S0681
SQR_S0683
SQR_S0684
SQR_S0687
SQR_S0688
SQR_S0690
SQR_S0692
SQR_S0694
SQR_S0695
SQR_S0697
SQR_S0698
SQR_S0699
SQR_S0700
SQR_S0701
SQR_S0702
SQR_S0703
SQR_S0704
SQR_S0705
SQR_S0706
SQR_S0710
SQR_S0712
SQR_S0714
SQR_S0715
SQR_S0716
SQR_S0718
SQR_S0731
SQR_S0732
SQR_S0733
SQR_S0734
SQR_S0735
SQR_S0736
SQR_S0737
SQR_S0738
SQR_S0739
SQR_S0740
SQR_S0741
SQR_S0742
SQR_S0743
SQR_S0744
SQR_S0745
SQR_S0746
SQR_S0747
SQR_S0748
SQR_S0749
SQR_S0750
SQR_S0751
SQR_S0752
SQR_S0753
SQR_S0754
SQR_S0755
SQR_S0756
SQR_S0757
SQR_S0758
SQR_S0759
SQR_S0760
SQR_S0761
SQR_S0762
SQR_S0763
SQR_S0765
SQR_S0766
SQR_S0767
SQR_S0768
SQR_S0769
SQR_S0770
SQR_S0771
SQR_S0780
SQR_S0783
SQR_S0784
SQR_S0785
SQR_S0786
SQR_S0787
SQR_S0789
SQR_S0790
SQR_S0791
SQR_S0792
SQR_S0793
SQR_S0794
SQR_S0795
SQR_S0796
SQR_S0798
SQR_S0799
SQR_S0800
SQR_S0801
SQR_S0802
SQR_S0803
SQR_S0811
SQR_S0822
SQR_S0825
SQR_S0826
SQR_S0835
SQR_S0840
SQR_S0841
SQR_S0842
SQR_S0847
SQR_S0850
SQR_S0851
SQR_S0852
SQR_S0853
SQR_S0854
SQR_S0857
SQR_S0859
SQR_S0860
SQR_S0861
SQR_S0862
SQR_S0864
SQR_S0865
SQR_S0866
SQR_S0867
SQR_S0868
SQR_S0869
SQR_S0871
SQR_S0872
SQR_S0873
SQR_S0875
SQR_S0876
SQR_S0877
SQR_S0878
SQR_S0879
SQR_S0897
SQR_S0898
SQR_S0899
SQR_S0900
SQR_S0901
SQR_S0903
SQR_S0904
SQR_S0905
SQR_S0906
SQR_S0907
SQR_S0908
SQR_S0909
SQR_S0910
SQR_S0911
SQR_S0912
SQR_S0913
SQR_S0914
SQR_S0927
SQR_S0931
SQR_S0932
SQR_S0933
SQR_S0934
SQR_S0936
SQR_S0937
SQR_S0938
SQR_S0939
SQR_S0940
SQR_S0952
SQR_S0953
SQR_S0954
SQR_S0955
SQR_S0956
SQR_S0957
SQR_S0958
SQR_S0978
SQR_S0980
SQR_S0981
SQR_S0982
SQR_S0983
SQR_S0984
SQR_S0985
SQR_S0986
SQR_S0990
SQR_S0991
SQR_S0992
SQR_S0993
SQR_S0994
SQR_S0995
SQR_S0997
SQR_S0998
SQR_S0999
SQR_S1001
;
ARRAY ST(406) 
SQRT_S0387
SQRT_S0388
SQRT_S0389
SQRT_S0390
SQRT_S0391
SQRT_S0393
SQRT_S0394
SQRT_S0395
SQRT_S0396
SQRT_S0397
SQRT_S0398
SQRT_S0401
SQRT_S0403
SQRT_S0404
SQRT_S0405
SQRT_S0406
SQRT_S0407
SQRT_S0409
SQRT_S0410
SQRT_S0412
SQRT_S0413
SQRT_S0414
SQRT_S0415
SQRT_S0416
SQRT_S0417
SQRT_S0418
SQRT_S0419
SQRT_S0420
SQRT_S0421
SQRT_S0422
SQRT_S0423
SQRT_S0426
SQRT_S0427
SQRT_S0428
SQRT_S0429
SQRT_S0434
SQRT_S0435
SQRT_S0436
SQRT_S0437
SQRT_S0438
SQRT_S0439
SQRT_S0440
SQRT_S0441
SQRT_S0442
SQRT_S0444
SQRT_S0445
SQRT_S0446
SQRT_S0448
SQRT_S0449
SQRT_S0450
SQRT_S0451
SQRT_S0452
SQRT_S0453
SQRT_S0454
SQRT_S0455
SQRT_S0456
SQRT_S0457
SQRT_S0458
SQRT_S0459
SQRT_S0460
SQRT_S0461
SQRT_S0462
SQRT_S0463
SQRT_S0464
SQRT_S0465
SQRT_S0466
SQRT_S0467
SQRT_S0468
SQRT_S0469
SQRT_S0470
SQRT_S0471
SQRT_S0472
SQRT_S0473
SQRT_S0474
SQRT_S0475
SQRT_S0476
SQRT_S0477
SQRT_S0479
SQRT_S0480
SQRT_S0481
SQRT_S0486
SQRT_S0487
SQRT_S0488
SQRT_S0489
SQRT_S0490
SQRT_S0491
SQRT_S0492
SQRT_S0493
SQRT_S0495
SQRT_S0496
SQRT_S0497
SQRT_S0498
SQRT_S0499
SQRT_S0501
SQRT_S0503
SQRT_S0504
SQRT_S0505
SQRT_S0506
SQRT_S0507
SQRT_S0508
SQRT_S0509
SQRT_S0510
SQRT_S0511
SQRT_S0512
SQRT_S0513
SQRT_S0514
SQRT_S0515
SQRT_S0516
SQRT_S0520
SQRT_S0521
SQRT_S0522
SQRT_S0523
SQRT_S0524
SQRT_S0525
SQRT_S0526
SQRT_S0527
SQRT_S0528
SQRT_S0529
SQRT_S0533
SQRT_S0534
SQRT_S0536
SQRT_S0537
SQRT_S0538
SQRT_S0539
SQRT_S0540
SQRT_S0541
SQRT_S0542
SQRT_S0543
SQRT_S0544
SQRT_S0545
SQRT_S0546
SQRT_S0547
SQRT_S0548
SQRT_S0552
SQRT_S0554
SQRT_S0557
SQRT_S0559
SQRT_S0560
SQRT_S0562
SQRT_S0563
SQRT_S0565
SQRT_S0566
SQRT_S0567
SQRT_S0569
SQRT_S0570
SQRT_S0571
SQRT_S0572
SQRT_S0573
SQRT_S0574
SQRT_S0575
SQRT_S0576
SQRT_S0577
SQRT_S0578
SQRT_S0579
SQRT_S0580
SQRT_S0581
SQRT_S0584
SQRT_S0585
SQRT_S0587
SQRT_S0588
SQRT_S0589
SQRT_S0590
SQRT_S0591
SQRT_S0592
SQRT_S0593
SQRT_S0594
SQRT_S0595
SQRT_S0596
SQRT_S0597
SQRT_S0598
SQRT_S0599
SQRT_S0600
SQRT_S0601
SQRT_S0605
SQRT_S0606
SQRT_S0607
SQRT_S0608
SQRT_S0609
SQRT_S0610
SQRT_S0611
SQRT_S0613
SQRT_S0614
SQRT_S0615
SQRT_S0616
SQRT_S0617
SQRT_S0618
SQRT_S0619
SQRT_S0620
SQRT_S0621
SQRT_S0622
SQRT_S0623
SQRT_S0624
SQRT_S0625
SQRT_S0626
SQRT_S0627
SQRT_S0628
SQRT_S0629
SQRT_S0630
SQRT_S0631
SQRT_S0632
SQRT_S0633
SQRT_S0634
SQRT_S0635
SQRT_S0640
SQRT_S0641
SQRT_S0642
SQRT_S0643
SQRT_S0644
SQRT_S0645
SQRT_S0646
SQRT_S0647
SQRT_S0648
SQRT_S0649
SQRT_S0652
SQRT_S0653
SQRT_S0655
SQRT_S0657
SQRT_S0658
SQRT_S0659
SQRT_S0661
SQRT_S0662
SQRT_S0663
SQRT_S0664
SQRT_S0665
SQRT_S0667
SQRT_S0668
SQRT_S0669
SQRT_S0670
SQRT_S0671
SQRT_S0672
SQRT_S0673
SQRT_S0674
SQRT_S0675
SQRT_S0676
SQRT_S0678
SQRT_S0680
SQRT_S0681
SQRT_S0683
SQRT_S0684
SQRT_S0687
SQRT_S0688
SQRT_S0690
SQRT_S0692
SQRT_S0694
SQRT_S0695
SQRT_S0697
SQRT_S0698
SQRT_S0699
SQRT_S0700
SQRT_S0701
SQRT_S0702
SQRT_S0703
SQRT_S0704
SQRT_S0705
SQRT_S0706
SQRT_S0710
SQRT_S0712
SQRT_S0714
SQRT_S0715
SQRT_S0716
SQRT_S0718
SQRT_S0731
SQRT_S0732
SQRT_S0733
SQRT_S0734
SQRT_S0735
SQRT_S0736
SQRT_S0737
SQRT_S0738
SQRT_S0739
SQRT_S0740
SQRT_S0741
SQRT_S0742
SQRT_S0743
SQRT_S0744
SQRT_S0745
SQRT_S0746
SQRT_S0747
SQRT_S0748
SQRT_S0749
SQRT_S0750
SQRT_S0751
SQRT_S0752
SQRT_S0753
SQRT_S0754
SQRT_S0755
SQRT_S0756
SQRT_S0757
SQRT_S0758
SQRT_S0759
SQRT_S0760
SQRT_S0761
SQRT_S0762
SQRT_S0763
SQRT_S0765
SQRT_S0766
SQRT_S0767
SQRT_S0768
SQRT_S0769
SQRT_S0770
SQRT_S0771
SQRT_S0780
SQRT_S0783
SQRT_S0784
SQRT_S0785
SQRT_S0786
SQRT_S0787
SQRT_S0789
SQRT_S0790
SQRT_S0791
SQRT_S0792
SQRT_S0793
SQRT_S0794
SQRT_S0795
SQRT_S0796
SQRT_S0798
SQRT_S0799
SQRT_S0800
SQRT_S0801
SQRT_S0802
SQRT_S0803
SQRT_S0811
SQRT_S0822
SQRT_S0825
SQRT_S0826
SQRT_S0835
SQRT_S0840
SQRT_S0841
SQRT_S0842
SQRT_S0847
SQRT_S0850
SQRT_S0851
SQRT_S0852
SQRT_S0853
SQRT_S0854
SQRT_S0857
SQRT_S0859
SQRT_S0860
SQRT_S0861
SQRT_S0862
SQRT_S0864
SQRT_S0865
SQRT_S0866
SQRT_S0867
SQRT_S0868
SQRT_S0869
SQRT_S0871
SQRT_S0872
SQRT_S0873
SQRT_S0875
SQRT_S0876
SQRT_S0877
SQRT_S0878
SQRT_S0879
SQRT_S0897
SQRT_S0898
SQRT_S0899
SQRT_S0900
SQRT_S0901
SQRT_S0903
SQRT_S0904
SQRT_S0905
SQRT_S0906
SQRT_S0907
SQRT_S0908
SQRT_S0909
SQRT_S0910
SQRT_S0911
SQRT_S0912
SQRT_S0913
SQRT_S0914
SQRT_S0927
SQRT_S0931
SQRT_S0932
SQRT_S0933
SQRT_S0934
SQRT_S0936
SQRT_S0937
SQRT_S0938
SQRT_S0939
SQRT_S0940
SQRT_S0952
SQRT_S0953
SQRT_S0954
SQRT_S0955
SQRT_S0956
SQRT_S0957
SQRT_S0958
SQRT_S0978
SQRT_S0980
SQRT_S0981
SQRT_S0982
SQRT_S0983
SQRT_S0984
SQRT_S0985
SQRT_S0986
SQRT_S0990
SQRT_S0991
SQRT_S0992
SQRT_S0993
SQRT_S0994
SQRT_S0995
SQRT_S0997
SQRT_S0998
SQRT_S0999
SQRT_S1001
;
ARRAY IN(406) 
INV_S0387
INV_S0388
INV_S0389
INV_S0390
INV_S0391
INV_S0393
INV_S0394
INV_S0395
INV_S0396
INV_S0397
INV_S0398
INV_S0401
INV_S0403
INV_S0404
INV_S0405
INV_S0406
INV_S0407
INV_S0409
INV_S0410
INV_S0412
INV_S0413
INV_S0414
INV_S0415
INV_S0416
INV_S0417
INV_S0418
INV_S0419
INV_S0420
INV_S0421
INV_S0422
INV_S0423
INV_S0426
INV_S0427
INV_S0428
INV_S0429
INV_S0434
INV_S0435
INV_S0436
INV_S0437
INV_S0438
INV_S0439
INV_S0440
INV_S0441
INV_S0442
INV_S0444
INV_S0445
INV_S0446
INV_S0448
INV_S0449
INV_S0450
INV_S0451
INV_S0452
INV_S0453
INV_S0454
INV_S0455
INV_S0456
INV_S0457
INV_S0458
INV_S0459
INV_S0460
INV_S0461
INV_S0462
INV_S0463
INV_S0464
INV_S0465
INV_S0466
INV_S0467
INV_S0468
INV_S0469
INV_S0470
INV_S0471
INV_S0472
INV_S0473
INV_S0474
INV_S0475
INV_S0476
INV_S0477
INV_S0479
INV_S0480
INV_S0481
INV_S0486
INV_S0487
INV_S0488
INV_S0489
INV_S0490
INV_S0491
INV_S0492
INV_S0493
INV_S0495
INV_S0496
INV_S0497
INV_S0498
INV_S0499
INV_S0501
INV_S0503
INV_S0504
INV_S0505
INV_S0506
INV_S0507
INV_S0508
INV_S0509
INV_S0510
INV_S0511
INV_S0512
INV_S0513
INV_S0514
INV_S0515
INV_S0516
INV_S0520
INV_S0521
INV_S0522
INV_S0523
INV_S0524
INV_S0525
INV_S0526
INV_S0527
INV_S0528
INV_S0529
INV_S0533
INV_S0534
INV_S0536
INV_S0537
INV_S0538
INV_S0539
INV_S0540
INV_S0541
INV_S0542
INV_S0543
INV_S0544
INV_S0545
INV_S0546
INV_S0547
INV_S0548
INV_S0552
INV_S0554
INV_S0557
INV_S0559
INV_S0560
INV_S0562
INV_S0563
INV_S0565
INV_S0566
INV_S0567
INV_S0569
INV_S0570
INV_S0571
INV_S0572
INV_S0573
INV_S0574
INV_S0575
INV_S0576
INV_S0577
INV_S0578
INV_S0579
INV_S0580
INV_S0581
INV_S0584
INV_S0585
INV_S0587
INV_S0588
INV_S0589
INV_S0590
INV_S0591
INV_S0592
INV_S0593
INV_S0594
INV_S0595
INV_S0596
INV_S0597
INV_S0598
INV_S0599
INV_S0600
INV_S0601
INV_S0605
INV_S0606
INV_S0607
INV_S0608
INV_S0609
INV_S0610
INV_S0611
INV_S0613
INV_S0614
INV_S0615
INV_S0616
INV_S0617
INV_S0618
INV_S0619
INV_S0620
INV_S0621
INV_S0622
INV_S0623
INV_S0624
INV_S0625
INV_S0626
INV_S0627
INV_S0628
INV_S0629
INV_S0630
INV_S0631
INV_S0632
INV_S0633
INV_S0634
INV_S0635
INV_S0640
INV_S0641
INV_S0642
INV_S0643
INV_S0644
INV_S0645
INV_S0646
INV_S0647
INV_S0648
INV_S0649
INV_S0652
INV_S0653
INV_S0655
INV_S0657
INV_S0658
INV_S0659
INV_S0661
INV_S0662
INV_S0663
INV_S0664
INV_S0665
INV_S0667
INV_S0668
INV_S0669
INV_S0670
INV_S0671
INV_S0672
INV_S0673
INV_S0674
INV_S0675
INV_S0676
INV_S0678
INV_S0680
INV_S0681
INV_S0683
INV_S0684
INV_S0687
INV_S0688
INV_S0690
INV_S0692
INV_S0694
INV_S0695
INV_S0697
INV_S0698
INV_S0699
INV_S0700
INV_S0701
INV_S0702
INV_S0703
INV_S0704
INV_S0705
INV_S0706
INV_S0710
INV_S0712
INV_S0714
INV_S0715
INV_S0716
INV_S0718
INV_S0731
INV_S0732
INV_S0733
INV_S0734
INV_S0735
INV_S0736
INV_S0737
INV_S0738
INV_S0739
INV_S0740
INV_S0741
INV_S0742
INV_S0743
INV_S0744
INV_S0745
INV_S0746
INV_S0747
INV_S0748
INV_S0749
INV_S0750
INV_S0751
INV_S0752
INV_S0753
INV_S0754
INV_S0755
INV_S0756
INV_S0757
INV_S0758
INV_S0759
INV_S0760
INV_S0761
INV_S0762
INV_S0763
INV_S0765
INV_S0766
INV_S0767
INV_S0768
INV_S0769
INV_S0770
INV_S0771
INV_S0780
INV_S0783
INV_S0784
INV_S0785
INV_S0786
INV_S0787
INV_S0789
INV_S0790
INV_S0791
INV_S0792
INV_S0793
INV_S0794
INV_S0795
INV_S0796
INV_S0798
INV_S0799
INV_S0800
INV_S0801
INV_S0802
INV_S0803
INV_S0811
INV_S0822
INV_S0825
INV_S0826
INV_S0835
INV_S0840
INV_S0841
INV_S0842
INV_S0847
INV_S0850
INV_S0851
INV_S0852
INV_S0853
INV_S0854
INV_S0857
INV_S0859
INV_S0860
INV_S0861
INV_S0862
INV_S0864
INV_S0865
INV_S0866
INV_S0867
INV_S0868
INV_S0869
INV_S0871
INV_S0872
INV_S0873
INV_S0875
INV_S0876
INV_S0877
INV_S0878
INV_S0879
INV_S0897
INV_S0898
INV_S0899
INV_S0900
INV_S0901
INV_S0903
INV_S0904
INV_S0905
INV_S0906
INV_S0907
INV_S0908
INV_S0909
INV_S0910
INV_S0911
INV_S0912
INV_S0913
INV_S0914
INV_S0927
INV_S0931
INV_S0932
INV_S0933
INV_S0934
INV_S0936
INV_S0937
INV_S0938
INV_S0939
INV_S0940
INV_S0952
INV_S0953
INV_S0954
INV_S0955
INV_S0956
INV_S0957
INV_S0958
INV_S0978
INV_S0980
INV_S0981
INV_S0982
INV_S0983
INV_S0984
INV_S0985
INV_S0986
INV_S0990
INV_S0991
INV_S0992
INV_S0993
INV_S0994
INV_S0995
INV_S0997
INV_S0998
INV_S0999
INV_S1001
;
FORMAT 
S0387	LOG_S0387	SQR_S0387	SQRT_S0387
S0388	LOG_S0388	SQR_S0388	SQRT_S0388
S0389	LOG_S0389	SQR_S0389	SQRT_S0389
S0390	LOG_S0390	SQR_S0390	SQRT_S0390
S0391	LOG_S0391	SQR_S0391	SQRT_S0391
S0393	LOG_S0393	SQR_S0393	SQRT_S0393
S0394	LOG_S0394	SQR_S0394	SQRT_S0394
S0395	LOG_S0395	SQR_S0395	SQRT_S0395
S0396	LOG_S0396	SQR_S0396	SQRT_S0396
S0397	LOG_S0397	SQR_S0397	SQRT_S0397
S0398	LOG_S0398	SQR_S0398	SQRT_S0398
S0401	LOG_S0401	SQR_S0401	SQRT_S0401
S0403	LOG_S0403	SQR_S0403	SQRT_S0403
S0404	LOG_S0404	SQR_S0404	SQRT_S0404
S0405	LOG_S0405	SQR_S0405	SQRT_S0405
S0406	LOG_S0406	SQR_S0406	SQRT_S0406
S0407	LOG_S0407	SQR_S0407	SQRT_S0407
S0409	LOG_S0409	SQR_S0409	SQRT_S0409
S0410	LOG_S0410	SQR_S0410	SQRT_S0410
S0412	LOG_S0412	SQR_S0412	SQRT_S0412
S0413	LOG_S0413	SQR_S0413	SQRT_S0413
S0414	LOG_S0414	SQR_S0414	SQRT_S0414
S0415	LOG_S0415	SQR_S0415	SQRT_S0415
S0416	LOG_S0416	SQR_S0416	SQRT_S0416
S0417	LOG_S0417	SQR_S0417	SQRT_S0417
S0418	LOG_S0418	SQR_S0418	SQRT_S0418
S0419	LOG_S0419	SQR_S0419	SQRT_S0419
S0420	LOG_S0420	SQR_S0420	SQRT_S0420
S0421	LOG_S0421	SQR_S0421	SQRT_S0421
S0422	LOG_S0422	SQR_S0422	SQRT_S0422
S0423	LOG_S0423	SQR_S0423	SQRT_S0423
S0426	LOG_S0426	SQR_S0426	SQRT_S0426
S0427	LOG_S0427	SQR_S0427	SQRT_S0427
S0428	LOG_S0428	SQR_S0428	SQRT_S0428
S0429	LOG_S0429	SQR_S0429	SQRT_S0429
S0434	LOG_S0434	SQR_S0434	SQRT_S0434
S0435	LOG_S0435	SQR_S0435	SQRT_S0435
S0436	LOG_S0436	SQR_S0436	SQRT_S0436
S0437	LOG_S0437	SQR_S0437	SQRT_S0437
S0438	LOG_S0438	SQR_S0438	SQRT_S0438
S0439	LOG_S0439	SQR_S0439	SQRT_S0439
S0440	LOG_S0440	SQR_S0440	SQRT_S0440
S0441	LOG_S0441	SQR_S0441	SQRT_S0441
S0442	LOG_S0442	SQR_S0442	SQRT_S0442
S0444	LOG_S0444	SQR_S0444	SQRT_S0444
S0445	LOG_S0445	SQR_S0445	SQRT_S0445
S0446	LOG_S0446	SQR_S0446	SQRT_S0446
S0448	LOG_S0448	SQR_S0448	SQRT_S0448
S0449	LOG_S0449	SQR_S0449	SQRT_S0449
S0450	LOG_S0450	SQR_S0450	SQRT_S0450
S0451	LOG_S0451	SQR_S0451	SQRT_S0451
S0452	LOG_S0452	SQR_S0452	SQRT_S0452
S0453	LOG_S0453	SQR_S0453	SQRT_S0453
S0454	LOG_S0454	SQR_S0454	SQRT_S0454
S0455	LOG_S0455	SQR_S0455	SQRT_S0455
S0456	LOG_S0456	SQR_S0456	SQRT_S0456
S0457	LOG_S0457	SQR_S0457	SQRT_S0457
S0458	LOG_S0458	SQR_S0458	SQRT_S0458
S0459	LOG_S0459	SQR_S0459	SQRT_S0459
S0460	LOG_S0460	SQR_S0460	SQRT_S0460
S0461	LOG_S0461	SQR_S0461	SQRT_S0461
S0462	LOG_S0462	SQR_S0462	SQRT_S0462
S0463	LOG_S0463	SQR_S0463	SQRT_S0463
S0464	LOG_S0464	SQR_S0464	SQRT_S0464
S0465	LOG_S0465	SQR_S0465	SQRT_S0465
S0466	LOG_S0466	SQR_S0466	SQRT_S0466
S0467	LOG_S0467	SQR_S0467	SQRT_S0467
S0468	LOG_S0468	SQR_S0468	SQRT_S0468
S0469	LOG_S0469	SQR_S0469	SQRT_S0469
S0470	LOG_S0470	SQR_S0470	SQRT_S0470
S0471	LOG_S0471	SQR_S0471	SQRT_S0471
S0472	LOG_S0472	SQR_S0472	SQRT_S0472
S0473	LOG_S0473	SQR_S0473	SQRT_S0473
S0474	LOG_S0474	SQR_S0474	SQRT_S0474
S0475	LOG_S0475	SQR_S0475	SQRT_S0475
S0476	LOG_S0476	SQR_S0476	SQRT_S0476
S0477	LOG_S0477	SQR_S0477	SQRT_S0477
S0479	LOG_S0479	SQR_S0479	SQRT_S0479
S0480	LOG_S0480	SQR_S0480	SQRT_S0480
S0481	LOG_S0481	SQR_S0481	SQRT_S0481
S0486	LOG_S0486	SQR_S0486	SQRT_S0486
S0487	LOG_S0487	SQR_S0487	SQRT_S0487
S0488	LOG_S0488	SQR_S0488	SQRT_S0488
S0489	LOG_S0489	SQR_S0489	SQRT_S0489
S0490	LOG_S0490	SQR_S0490	SQRT_S0490
S0491	LOG_S0491	SQR_S0491	SQRT_S0491
S0492	LOG_S0492	SQR_S0492	SQRT_S0492
S0493	LOG_S0493	SQR_S0493	SQRT_S0493
S0495	LOG_S0495	SQR_S0495	SQRT_S0495
S0496	LOG_S0496	SQR_S0496	SQRT_S0496
S0497	LOG_S0497	SQR_S0497	SQRT_S0497
S0498	LOG_S0498	SQR_S0498	SQRT_S0498
S0499	LOG_S0499	SQR_S0499	SQRT_S0499
S0501	LOG_S0501	SQR_S0501	SQRT_S0501
S0503	LOG_S0503	SQR_S0503	SQRT_S0503
S0504	LOG_S0504	SQR_S0504	SQRT_S0504
S0505	LOG_S0505	SQR_S0505	SQRT_S0505
S0506	LOG_S0506	SQR_S0506	SQRT_S0506
S0507	LOG_S0507	SQR_S0507	SQRT_S0507
S0508	LOG_S0508	SQR_S0508	SQRT_S0508
S0509	LOG_S0509	SQR_S0509	SQRT_S0509
S0510	LOG_S0510	SQR_S0510	SQRT_S0510
S0511	LOG_S0511	SQR_S0511	SQRT_S0511
S0512	LOG_S0512	SQR_S0512	SQRT_S0512
S0513	LOG_S0513	SQR_S0513	SQRT_S0513
S0514	LOG_S0514	SQR_S0514	SQRT_S0514
S0515	LOG_S0515	SQR_S0515	SQRT_S0515
S0516	LOG_S0516	SQR_S0516	SQRT_S0516
S0520	LOG_S0520	SQR_S0520	SQRT_S0520
S0521	LOG_S0521	SQR_S0521	SQRT_S0521
S0522	LOG_S0522	SQR_S0522	SQRT_S0522
S0523	LOG_S0523	SQR_S0523	SQRT_S0523
S0524	LOG_S0524	SQR_S0524	SQRT_S0524
S0525	LOG_S0525	SQR_S0525	SQRT_S0525
S0526	LOG_S0526	SQR_S0526	SQRT_S0526
S0527	LOG_S0527	SQR_S0527	SQRT_S0527
S0528	LOG_S0528	SQR_S0528	SQRT_S0528
S0529	LOG_S0529	SQR_S0529	SQRT_S0529
S0533	LOG_S0533	SQR_S0533	SQRT_S0533
S0534	LOG_S0534	SQR_S0534	SQRT_S0534
S0536	LOG_S0536	SQR_S0536	SQRT_S0536
S0537	LOG_S0537	SQR_S0537	SQRT_S0537
S0538	LOG_S0538	SQR_S0538	SQRT_S0538
S0539	LOG_S0539	SQR_S0539	SQRT_S0539
S0540	LOG_S0540	SQR_S0540	SQRT_S0540
S0541	LOG_S0541	SQR_S0541	SQRT_S0541
S0542	LOG_S0542	SQR_S0542	SQRT_S0542
S0543	LOG_S0543	SQR_S0543	SQRT_S0543
S0544	LOG_S0544	SQR_S0544	SQRT_S0544
S0545	LOG_S0545	SQR_S0545	SQRT_S0545
S0546	LOG_S0546	SQR_S0546	SQRT_S0546
S0547	LOG_S0547	SQR_S0547	SQRT_S0547
S0548	LOG_S0548	SQR_S0548	SQRT_S0548
S0552	LOG_S0552	SQR_S0552	SQRT_S0552
S0554	LOG_S0554	SQR_S0554	SQRT_S0554
S0557	LOG_S0557	SQR_S0557	SQRT_S0557
S0559	LOG_S0559	SQR_S0559	SQRT_S0559
S0560	LOG_S0560	SQR_S0560	SQRT_S0560
S0562	LOG_S0562	SQR_S0562	SQRT_S0562
S0563	LOG_S0563	SQR_S0563	SQRT_S0563
S0565	LOG_S0565	SQR_S0565	SQRT_S0565
S0566	LOG_S0566	SQR_S0566	SQRT_S0566
S0567	LOG_S0567	SQR_S0567	SQRT_S0567
S0569	LOG_S0569	SQR_S0569	SQRT_S0569
S0570	LOG_S0570	SQR_S0570	SQRT_S0570
S0571	LOG_S0571	SQR_S0571	SQRT_S0571
S0572	LOG_S0572	SQR_S0572	SQRT_S0572
S0573	LOG_S0573	SQR_S0573	SQRT_S0573
S0574	LOG_S0574	SQR_S0574	SQRT_S0574
S0575	LOG_S0575	SQR_S0575	SQRT_S0575
S0576	LOG_S0576	SQR_S0576	SQRT_S0576
S0577	LOG_S0577	SQR_S0577	SQRT_S0577
S0578	LOG_S0578	SQR_S0578	SQRT_S0578
S0579	LOG_S0579	SQR_S0579	SQRT_S0579
S0580	LOG_S0580	SQR_S0580	SQRT_S0580
S0581	LOG_S0581	SQR_S0581	SQRT_S0581
S0584	LOG_S0584	SQR_S0584	SQRT_S0584
S0585	LOG_S0585	SQR_S0585	SQRT_S0585
S0587	LOG_S0587	SQR_S0587	SQRT_S0587
S0588	LOG_S0588	SQR_S0588	SQRT_S0588
S0589	LOG_S0589	SQR_S0589	SQRT_S0589
S0590	LOG_S0590	SQR_S0590	SQRT_S0590
S0591	LOG_S0591	SQR_S0591	SQRT_S0591
S0592	LOG_S0592	SQR_S0592	SQRT_S0592
S0593	LOG_S0593	SQR_S0593	SQRT_S0593
S0594	LOG_S0594	SQR_S0594	SQRT_S0594
S0595	LOG_S0595	SQR_S0595	SQRT_S0595
S0596	LOG_S0596	SQR_S0596	SQRT_S0596
S0597	LOG_S0597	SQR_S0597	SQRT_S0597
S0598	LOG_S0598	SQR_S0598	SQRT_S0598
S0599	LOG_S0599	SQR_S0599	SQRT_S0599
S0600	LOG_S0600	SQR_S0600	SQRT_S0600
S0601	LOG_S0601	SQR_S0601	SQRT_S0601
S0605	LOG_S0605	SQR_S0605	SQRT_S0605
S0606	LOG_S0606	SQR_S0606	SQRT_S0606
S0607	LOG_S0607	SQR_S0607	SQRT_S0607
S0608	LOG_S0608	SQR_S0608	SQRT_S0608
S0609	LOG_S0609	SQR_S0609	SQRT_S0609
S0610	LOG_S0610	SQR_S0610	SQRT_S0610
S0611	LOG_S0611	SQR_S0611	SQRT_S0611
S0613	LOG_S0613	SQR_S0613	SQRT_S0613
S0614	LOG_S0614	SQR_S0614	SQRT_S0614
S0615	LOG_S0615	SQR_S0615	SQRT_S0615
S0616	LOG_S0616	SQR_S0616	SQRT_S0616
S0617	LOG_S0617	SQR_S0617	SQRT_S0617
S0618	LOG_S0618	SQR_S0618	SQRT_S0618
S0619	LOG_S0619	SQR_S0619	SQRT_S0619
S0620	LOG_S0620	SQR_S0620	SQRT_S0620
S0621	LOG_S0621	SQR_S0621	SQRT_S0621
S0622	LOG_S0622	SQR_S0622	SQRT_S0622
S0623	LOG_S0623	SQR_S0623	SQRT_S0623
S0624	LOG_S0624	SQR_S0624	SQRT_S0624
S0625	LOG_S0625	SQR_S0625	SQRT_S0625
S0626	LOG_S0626	SQR_S0626	SQRT_S0626
S0627	LOG_S0627	SQR_S0627	SQRT_S0627
S0628	LOG_S0628	SQR_S0628	SQRT_S0628
S0629	LOG_S0629	SQR_S0629	SQRT_S0629
S0630	LOG_S0630	SQR_S0630	SQRT_S0630
S0631	LOG_S0631	SQR_S0631	SQRT_S0631
S0632	LOG_S0632	SQR_S0632	SQRT_S0632
S0633	LOG_S0633	SQR_S0633	SQRT_S0633
S0634	LOG_S0634	SQR_S0634	SQRT_S0634
S0635	LOG_S0635	SQR_S0635	SQRT_S0635
S0640	LOG_S0640	SQR_S0640	SQRT_S0640
S0641	LOG_S0641	SQR_S0641	SQRT_S0641
S0642	LOG_S0642	SQR_S0642	SQRT_S0642
S0643	LOG_S0643	SQR_S0643	SQRT_S0643
S0644	LOG_S0644	SQR_S0644	SQRT_S0644
S0645	LOG_S0645	SQR_S0645	SQRT_S0645
S0646	LOG_S0646	SQR_S0646	SQRT_S0646
S0647	LOG_S0647	SQR_S0647	SQRT_S0647
S0648	LOG_S0648	SQR_S0648	SQRT_S0648
S0649	LOG_S0649	SQR_S0649	SQRT_S0649
S0652	LOG_S0652	SQR_S0652	SQRT_S0652
S0653	LOG_S0653	SQR_S0653	SQRT_S0653
S0655	LOG_S0655	SQR_S0655	SQRT_S0655
S0657	LOG_S0657	SQR_S0657	SQRT_S0657
S0658	LOG_S0658	SQR_S0658	SQRT_S0658
S0659	LOG_S0659	SQR_S0659	SQRT_S0659
S0661	LOG_S0661	SQR_S0661	SQRT_S0661
S0662	LOG_S0662	SQR_S0662	SQRT_S0662
S0663	LOG_S0663	SQR_S0663	SQRT_S0663
S0664	LOG_S0664	SQR_S0664	SQRT_S0664
S0665	LOG_S0665	SQR_S0665	SQRT_S0665
S0667	LOG_S0667	SQR_S0667	SQRT_S0667
S0668	LOG_S0668	SQR_S0668	SQRT_S0668
S0669	LOG_S0669	SQR_S0669	SQRT_S0669
S0670	LOG_S0670	SQR_S0670	SQRT_S0670
S0671	LOG_S0671	SQR_S0671	SQRT_S0671
S0672	LOG_S0672	SQR_S0672	SQRT_S0672
S0673	LOG_S0673	SQR_S0673	SQRT_S0673
S0674	LOG_S0674	SQR_S0674	SQRT_S0674
S0675	LOG_S0675	SQR_S0675	SQRT_S0675
S0676	LOG_S0676	SQR_S0676	SQRT_S0676
S0678	LOG_S0678	SQR_S0678	SQRT_S0678
S0680	LOG_S0680	SQR_S0680	SQRT_S0680
S0681	LOG_S0681	SQR_S0681	SQRT_S0681
S0683	LOG_S0683	SQR_S0683	SQRT_S0683
S0684	LOG_S0684	SQR_S0684	SQRT_S0684
S0687	LOG_S0687	SQR_S0687	SQRT_S0687
S0688	LOG_S0688	SQR_S0688	SQRT_S0688
S0690	LOG_S0690	SQR_S0690	SQRT_S0690
S0692	LOG_S0692	SQR_S0692	SQRT_S0692
S0694	LOG_S0694	SQR_S0694	SQRT_S0694
S0695	LOG_S0695	SQR_S0695	SQRT_S0695
S0697	LOG_S0697	SQR_S0697	SQRT_S0697
S0698	LOG_S0698	SQR_S0698	SQRT_S0698
S0699	LOG_S0699	SQR_S0699	SQRT_S0699
S0700	LOG_S0700	SQR_S0700	SQRT_S0700
S0701	LOG_S0701	SQR_S0701	SQRT_S0701
S0702	LOG_S0702	SQR_S0702	SQRT_S0702
S0703	LOG_S0703	SQR_S0703	SQRT_S0703
S0704	LOG_S0704	SQR_S0704	SQRT_S0704
S0705	LOG_S0705	SQR_S0705	SQRT_S0705
S0706	LOG_S0706	SQR_S0706	SQRT_S0706
S0710	LOG_S0710	SQR_S0710	SQRT_S0710
S0712	LOG_S0712	SQR_S0712	SQRT_S0712
S0714	LOG_S0714	SQR_S0714	SQRT_S0714
S0715	LOG_S0715	SQR_S0715	SQRT_S0715
S0716	LOG_S0716	SQR_S0716	SQRT_S0716
S0718	LOG_S0718	SQR_S0718	SQRT_S0718
S0731	LOG_S0731	SQR_S0731	SQRT_S0731
S0732	LOG_S0732	SQR_S0732	SQRT_S0732
S0733	LOG_S0733	SQR_S0733	SQRT_S0733
S0734	LOG_S0734	SQR_S0734	SQRT_S0734
S0735	LOG_S0735	SQR_S0735	SQRT_S0735
S0736	LOG_S0736	SQR_S0736	SQRT_S0736
S0737	LOG_S0737	SQR_S0737	SQRT_S0737
S0738	LOG_S0738	SQR_S0738	SQRT_S0738
S0739	LOG_S0739	SQR_S0739	SQRT_S0739
S0740	LOG_S0740	SQR_S0740	SQRT_S0740
S0741	LOG_S0741	SQR_S0741	SQRT_S0741
S0742	LOG_S0742	SQR_S0742	SQRT_S0742
S0743	LOG_S0743	SQR_S0743	SQRT_S0743
S0744	LOG_S0744	SQR_S0744	SQRT_S0744
S0745	LOG_S0745	SQR_S0745	SQRT_S0745
S0746	LOG_S0746	SQR_S0746	SQRT_S0746
S0747	LOG_S0747	SQR_S0747	SQRT_S0747
S0748	LOG_S0748	SQR_S0748	SQRT_S0748
S0749	LOG_S0749	SQR_S0749	SQRT_S0749
S0750	LOG_S0750	SQR_S0750	SQRT_S0750
S0751	LOG_S0751	SQR_S0751	SQRT_S0751
S0752	LOG_S0752	SQR_S0752	SQRT_S0752
S0753	LOG_S0753	SQR_S0753	SQRT_S0753
S0754	LOG_S0754	SQR_S0754	SQRT_S0754
S0755	LOG_S0755	SQR_S0755	SQRT_S0755
S0756	LOG_S0756	SQR_S0756	SQRT_S0756
S0757	LOG_S0757	SQR_S0757	SQRT_S0757
S0758	LOG_S0758	SQR_S0758	SQRT_S0758
S0759	LOG_S0759	SQR_S0759	SQRT_S0759
S0760	LOG_S0760	SQR_S0760	SQRT_S0760
S0761	LOG_S0761	SQR_S0761	SQRT_S0761
S0762	LOG_S0762	SQR_S0762	SQRT_S0762
S0763	LOG_S0763	SQR_S0763	SQRT_S0763
S0765	LOG_S0765	SQR_S0765	SQRT_S0765
S0766	LOG_S0766	SQR_S0766	SQRT_S0766
S0767	LOG_S0767	SQR_S0767	SQRT_S0767
S0768	LOG_S0768	SQR_S0768	SQRT_S0768
S0769	LOG_S0769	SQR_S0769	SQRT_S0769
S0770	LOG_S0770	SQR_S0770	SQRT_S0770
S0771	LOG_S0771	SQR_S0771	SQRT_S0771
S0780	LOG_S0780	SQR_S0780	SQRT_S0780
S0783	LOG_S0783	SQR_S0783	SQRT_S0783
S0784	LOG_S0784	SQR_S0784	SQRT_S0784
S0785	LOG_S0785	SQR_S0785	SQRT_S0785
S0786	LOG_S0786	SQR_S0786	SQRT_S0786
S0787	LOG_S0787	SQR_S0787	SQRT_S0787
S0789	LOG_S0789	SQR_S0789	SQRT_S0789
S0790	LOG_S0790	SQR_S0790	SQRT_S0790
S0791	LOG_S0791	SQR_S0791	SQRT_S0791
S0792	LOG_S0792	SQR_S0792	SQRT_S0792
S0793	LOG_S0793	SQR_S0793	SQRT_S0793
S0794	LOG_S0794	SQR_S0794	SQRT_S0794
S0795	LOG_S0795	SQR_S0795	SQRT_S0795
S0796	LOG_S0796	SQR_S0796	SQRT_S0796
S0798	LOG_S0798	SQR_S0798	SQRT_S0798
S0799	LOG_S0799	SQR_S0799	SQRT_S0799
S0800	LOG_S0800	SQR_S0800	SQRT_S0800
S0801	LOG_S0801	SQR_S0801	SQRT_S0801
S0802	LOG_S0802	SQR_S0802	SQRT_S0802
S0803	LOG_S0803	SQR_S0803	SQRT_S0803
S0811	LOG_S0811	SQR_S0811	SQRT_S0811
S0822	LOG_S0822	SQR_S0822	SQRT_S0822
S0825	LOG_S0825	SQR_S0825	SQRT_S0825
S0826	LOG_S0826	SQR_S0826	SQRT_S0826
S0835	LOG_S0835	SQR_S0835	SQRT_S0835
S0840	LOG_S0840	SQR_S0840	SQRT_S0840
S0841	LOG_S0841	SQR_S0841	SQRT_S0841
S0842	LOG_S0842	SQR_S0842	SQRT_S0842
S0847	LOG_S0847	SQR_S0847	SQRT_S0847
S0850	LOG_S0850	SQR_S0850	SQRT_S0850
S0851	LOG_S0851	SQR_S0851	SQRT_S0851
S0852	LOG_S0852	SQR_S0852	SQRT_S0852
S0853	LOG_S0853	SQR_S0853	SQRT_S0853
S0854	LOG_S0854	SQR_S0854	SQRT_S0854
S0857	LOG_S0857	SQR_S0857	SQRT_S0857
S0859	LOG_S0859	SQR_S0859	SQRT_S0859
S0860	LOG_S0860	SQR_S0860	SQRT_S0860
S0861	LOG_S0861	SQR_S0861	SQRT_S0861
S0862	LOG_S0862	SQR_S0862	SQRT_S0862
S0864	LOG_S0864	SQR_S0864	SQRT_S0864
S0865	LOG_S0865	SQR_S0865	SQRT_S0865
S0866	LOG_S0866	SQR_S0866	SQRT_S0866
S0867	LOG_S0867	SQR_S0867	SQRT_S0867
S0868	LOG_S0868	SQR_S0868	SQRT_S0868
S0869	LOG_S0869	SQR_S0869	SQRT_S0869
S0871	LOG_S0871	SQR_S0871	SQRT_S0871
S0872	LOG_S0872	SQR_S0872	SQRT_S0872
S0873	LOG_S0873	SQR_S0873	SQRT_S0873
S0875	LOG_S0875	SQR_S0875	SQRT_S0875
S0876	LOG_S0876	SQR_S0876	SQRT_S0876
S0877	LOG_S0877	SQR_S0877	SQRT_S0877
S0878	LOG_S0878	SQR_S0878	SQRT_S0878
S0879	LOG_S0879	SQR_S0879	SQRT_S0879
S0897	LOG_S0897	SQR_S0897	SQRT_S0897
S0898	LOG_S0898	SQR_S0898	SQRT_S0898
S0899	LOG_S0899	SQR_S0899	SQRT_S0899
S0900	LOG_S0900	SQR_S0900	SQRT_S0900
S0901	LOG_S0901	SQR_S0901	SQRT_S0901
S0903	LOG_S0903	SQR_S0903	SQRT_S0903
S0904	LOG_S0904	SQR_S0904	SQRT_S0904
S0905	LOG_S0905	SQR_S0905	SQRT_S0905
S0906	LOG_S0906	SQR_S0906	SQRT_S0906
S0907	LOG_S0907	SQR_S0907	SQRT_S0907
S0908	LOG_S0908	SQR_S0908	SQRT_S0908
S0909	LOG_S0909	SQR_S0909	SQRT_S0909
S0910	LOG_S0910	SQR_S0910	SQRT_S0910
S0911	LOG_S0911	SQR_S0911	SQRT_S0911
S0912	LOG_S0912	SQR_S0912	SQRT_S0912
S0913	LOG_S0913	SQR_S0913	SQRT_S0913
S0914	LOG_S0914	SQR_S0914	SQRT_S0914
S0927	LOG_S0927	SQR_S0927	SQRT_S0927
S0931	LOG_S0931	SQR_S0931	SQRT_S0931
S0932	LOG_S0932	SQR_S0932	SQRT_S0932
S0933	LOG_S0933	SQR_S0933	SQRT_S0933
S0934	LOG_S0934	SQR_S0934	SQRT_S0934
S0936	LOG_S0936	SQR_S0936	SQRT_S0936
S0937	LOG_S0937	SQR_S0937	SQRT_S0937
S0938	LOG_S0938	SQR_S0938	SQRT_S0938
S0939	LOG_S0939	SQR_S0939	SQRT_S0939
S0940	LOG_S0940	SQR_S0940	SQRT_S0940
S0952	LOG_S0952	SQR_S0952	SQRT_S0952
S0953	LOG_S0953	SQR_S0953	SQRT_S0953
S0954	LOG_S0954	SQR_S0954	SQRT_S0954
S0955	LOG_S0955	SQR_S0955	SQRT_S0955
S0956	LOG_S0956	SQR_S0956	SQRT_S0956
S0957	LOG_S0957	SQR_S0957	SQRT_S0957
S0958	LOG_S0958	SQR_S0958	SQRT_S0958
S0978	LOG_S0978	SQR_S0978	SQRT_S0978
S0980	LOG_S0980	SQR_S0980	SQRT_S0980
S0981	LOG_S0981	SQR_S0981	SQRT_S0981
S0982	LOG_S0982	SQR_S0982	SQRT_S0982
S0983	LOG_S0983	SQR_S0983	SQRT_S0983
S0984	LOG_S0984	SQR_S0984	SQRT_S0984
S0985	LOG_S0985	SQR_S0985	SQRT_S0985
S0986	LOG_S0986	SQR_S0986	SQRT_S0986
S0990	LOG_S0990	SQR_S0990	SQRT_S0990
S0991	LOG_S0991	SQR_S0991	SQRT_S0991
S0992	LOG_S0992	SQR_S0992	SQRT_S0992
S0993	LOG_S0993	SQR_S0993	SQRT_S0993
S0994	LOG_S0994	SQR_S0994	SQRT_S0994
S0995	LOG_S0995	SQR_S0995	SQRT_S0995
S0997	LOG_S0997	SQR_S0997	SQRT_S0997
S0998	LOG_S0998	SQR_S0998	SQRT_S0998
S0999	LOG_S0999	SQR_S0999	SQRT_S0999
S1001	LOG_S1001	SQR_S1001	SQRT_S1001
10.2;
FORMAT
INV_S0387
INV_S0388
INV_S0389
INV_S0390
INV_S0391
INV_S0393
INV_S0394
INV_S0395
INV_S0396
INV_S0397
INV_S0398
INV_S0401
INV_S0403
INV_S0404
INV_S0405
INV_S0406
INV_S0407
INV_S0409
INV_S0410
INV_S0412
INV_S0413
INV_S0414
INV_S0415
INV_S0416
INV_S0417
INV_S0418
INV_S0419
INV_S0420
INV_S0421
INV_S0422
INV_S0423
INV_S0426
INV_S0427
INV_S0428
INV_S0429
INV_S0434
INV_S0435
INV_S0436
INV_S0437
INV_S0438
INV_S0439
INV_S0440
INV_S0441
INV_S0442
INV_S0444
INV_S0445
INV_S0446
INV_S0448
INV_S0449
INV_S0450
INV_S0451
INV_S0452
INV_S0453
INV_S0454
INV_S0455
INV_S0456
INV_S0457
INV_S0458
INV_S0459
INV_S0460
INV_S0461
INV_S0462
INV_S0463
INV_S0464
INV_S0465
INV_S0466
INV_S0467
INV_S0468
INV_S0469
INV_S0470
INV_S0471
INV_S0472
INV_S0473
INV_S0474
INV_S0475
INV_S0476
INV_S0477
INV_S0479
INV_S0480
INV_S0481
INV_S0486
INV_S0487
INV_S0488
INV_S0489
INV_S0490
INV_S0491
INV_S0492
INV_S0493
INV_S0495
INV_S0496
INV_S0497
INV_S0498
INV_S0499
INV_S0501
INV_S0503
INV_S0504
INV_S0505
INV_S0506
INV_S0507
INV_S0508
INV_S0509
INV_S0510
INV_S0511
INV_S0512
INV_S0513
INV_S0514
INV_S0515
INV_S0516
INV_S0520
INV_S0521
INV_S0522
INV_S0523
INV_S0524
INV_S0525
INV_S0526
INV_S0527
INV_S0528
INV_S0529
INV_S0533
INV_S0534
INV_S0536
INV_S0537
INV_S0538
INV_S0539
INV_S0540
INV_S0541
INV_S0542
INV_S0543
INV_S0544
INV_S0545
INV_S0546
INV_S0547
INV_S0548
INV_S0552
INV_S0554
INV_S0557
INV_S0559
INV_S0560
INV_S0562
INV_S0563
INV_S0565
INV_S0566
INV_S0567
INV_S0569
INV_S0570
INV_S0571
INV_S0572
INV_S0573
INV_S0574
INV_S0575
INV_S0576
INV_S0577
INV_S0578
INV_S0579
INV_S0580
INV_S0581
INV_S0584
INV_S0585
INV_S0587
INV_S0588
INV_S0589
INV_S0590
INV_S0591
INV_S0592
INV_S0593
INV_S0594
INV_S0595
INV_S0596
INV_S0597
INV_S0598
INV_S0599
INV_S0600
INV_S0601
INV_S0605
INV_S0606
INV_S0607
INV_S0608
INV_S0609
INV_S0610
INV_S0611
INV_S0613
INV_S0614
INV_S0615
INV_S0616
INV_S0617
INV_S0618
INV_S0619
INV_S0620
INV_S0621
INV_S0622
INV_S0623
INV_S0624
INV_S0625
INV_S0626
INV_S0627
INV_S0628
INV_S0629
INV_S0630
INV_S0631
INV_S0632
INV_S0633
INV_S0634
INV_S0635
INV_S0640
INV_S0641
INV_S0642
INV_S0643
INV_S0644
INV_S0645
INV_S0646
INV_S0647
INV_S0648
INV_S0649
INV_S0652
INV_S0653
INV_S0655
INV_S0657
INV_S0658
INV_S0659
INV_S0661
INV_S0662
INV_S0663
INV_S0664
INV_S0665
INV_S0667
INV_S0668
INV_S0669
INV_S0670
INV_S0671
INV_S0672
INV_S0673
INV_S0674
INV_S0675
INV_S0676
INV_S0678
INV_S0680
INV_S0681
INV_S0683
INV_S0684
INV_S0687
INV_S0688
INV_S0690
INV_S0692
INV_S0694
INV_S0695
INV_S0697
INV_S0698
INV_S0699
INV_S0700
INV_S0701
INV_S0702
INV_S0703
INV_S0704
INV_S0705
INV_S0706
INV_S0710
INV_S0712
INV_S0714
INV_S0715
INV_S0716
INV_S0718
INV_S0731
INV_S0732
INV_S0733
INV_S0734
INV_S0735
INV_S0736
INV_S0737
INV_S0738
INV_S0739
INV_S0740
INV_S0741
INV_S0742
INV_S0743
INV_S0744
INV_S0745
INV_S0746
INV_S0747
INV_S0748
INV_S0749
INV_S0750
INV_S0751
INV_S0752
INV_S0753
INV_S0754
INV_S0755
INV_S0756
INV_S0757
INV_S0758
INV_S0759
INV_S0760
INV_S0761
INV_S0762
INV_S0763
INV_S0765
INV_S0766
INV_S0767
INV_S0768
INV_S0769
INV_S0770
INV_S0771
INV_S0780
INV_S0783
INV_S0784
INV_S0785
INV_S0786
INV_S0787
INV_S0789
INV_S0790
INV_S0791
INV_S0792
INV_S0793
INV_S0794
INV_S0795
INV_S0796
INV_S0798
INV_S0799
INV_S0800
INV_S0801
INV_S0802
INV_S0803
INV_S0811
INV_S0822
INV_S0825
INV_S0826
INV_S0835
INV_S0840
INV_S0841
INV_S0842
INV_S0847
INV_S0850
INV_S0851
INV_S0852
INV_S0853
INV_S0854
INV_S0857
INV_S0859
INV_S0860
INV_S0861
INV_S0862
INV_S0864
INV_S0865
INV_S0866
INV_S0867
INV_S0868
INV_S0869
INV_S0871
INV_S0872
INV_S0873
INV_S0875
INV_S0876
INV_S0877
INV_S0878
INV_S0879
INV_S0897
INV_S0898
INV_S0899
INV_S0900
INV_S0901
INV_S0903
INV_S0904
INV_S0905
INV_S0906
INV_S0907
INV_S0908
INV_S0909
INV_S0910
INV_S0911
INV_S0912
INV_S0913
INV_S0914
INV_S0927
INV_S0931
INV_S0932
INV_S0933
INV_S0934
INV_S0936
INV_S0937
INV_S0938
INV_S0939
INV_S0940
INV_S0952
INV_S0953
INV_S0954
INV_S0955
INV_S0956
INV_S0957
INV_S0958
INV_S0978
INV_S0980
INV_S0981
INV_S0982
INV_S0983
INV_S0984
INV_S0985
INV_S0986
INV_S0990
INV_S0991
INV_S0992
INV_S0993
INV_S0994
INV_S0995
INV_S0997
INV_S0998
INV_S0999
INV_S1001
10.4;
DO I = 1 TO 406;
L(I) = LOG(V(I));
S(I) = V(I)**2;
ST(I) = V(I)**0.5;
IN(I) = 1/V(I);
END;DROP I;RUN;
