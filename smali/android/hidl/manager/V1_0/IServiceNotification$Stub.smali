.class public abstract Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.super Landroid/os/HwBinder;
.source "IServiceNotification.java"

# interfaces
.implements Landroid/hidl/manager/V1_0/IServiceNotification;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hidl/manager/V1_0/IServiceNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 338
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 341
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 354
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 391
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 392
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 393
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 394
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 395
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x4t
        -0x22t
        0x1dt
        0x7t
        -0x78t
        0x6t
        0x6at
        0x62t
        -0x2bt
        0x76t
        0x6ft
        0x4dt
        -0x3ft
        -0x63t
        0x4ct
        0x1et
        -0x39t
        0x69t
        0x67t
        -0x2bt
        -0x23t
        -0x4at
        0x36t
        -0xbt
        -0x64t
        -0x34t
        0x66t
        0x60t
        0x34t
        0x60t
        -0x44t
        -0x8t
    .end array-data

    :array_1
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hidl.manager@1.0::IServiceNotification"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 360
    const-string v0, "android.hidl.manager@1.0::IServiceNotification"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    .line 379
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 401
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 403
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 431
    const-string v0, "android.hidl.base@1.0::IBase"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 605
    :sswitch_0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_0

    move v2, v3

    .line 606
    :cond_0
    if-eqz v2, :cond_16

    .line 607
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 608
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 609
    goto/16 :goto_7

    .line 592
    :sswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1

    move v2, v3

    .line 593
    :cond_1
    if-eq v2, v3, :cond_2

    .line 594
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 595
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 596
    goto/16 :goto_7

    .line 597
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;->notifySyspropsChanged()V

    .line 600
    goto/16 :goto_7

    .line 576
    :sswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    .line 577
    :goto_0
    if-eqz v3, :cond_4

    .line 578
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 579
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 580
    goto/16 :goto_7

    .line 581
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 584
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 585
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 586
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 587
    goto/16 :goto_7

    .line 561
    :sswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v3, v2

    .line 562
    :goto_1
    if-eqz v3, :cond_6

    .line 563
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 564
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 565
    goto/16 :goto_7

    .line 566
    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;->ping()V

    .line 569
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 570
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 571
    goto/16 :goto_7

    .line 551
    :sswitch_4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7

    move v2, v3

    .line 552
    :cond_7
    if-eqz v2, :cond_16

    .line 553
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 554
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 555
    goto/16 :goto_7

    .line 538
    :sswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8

    move v2, v3

    .line 539
    :cond_8
    if-eq v2, v3, :cond_9

    .line 540
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 541
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 542
    goto/16 :goto_7

    .line 543
    :cond_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;->setHALInstrumentation()V

    .line 546
    goto/16 :goto_7

    .line 499
    :sswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    move v3, v2

    .line 500
    :goto_2
    if-eqz v3, :cond_b

    .line 501
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 502
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 503
    goto/16 :goto_7

    .line 504
    :cond_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 507
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 509
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 511
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 512
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 513
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 514
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 515
    nop

    :goto_3
    if-ge v2, p4, :cond_d

    .line 517
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 518
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 520
    if-eqz v1, :cond_c

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_c

    .line 524
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 525
    nop

    .line 515
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 521
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 528
    :cond_d
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 530
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 532
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 533
    goto/16 :goto_7

    .line 483
    :sswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_e

    goto :goto_4

    :cond_e
    move v3, v2

    .line 484
    :goto_4
    if-eqz v3, :cond_f

    .line 485
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 486
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 487
    goto/16 :goto_7

    .line 488
    :cond_f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 491
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 492
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 494
    goto/16 :goto_7

    .line 466
    :sswitch_8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_10

    goto :goto_5

    :cond_10
    move v3, v2

    .line 467
    :goto_5
    if-eqz v3, :cond_11

    .line 468
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 469
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 470
    goto :goto_7

    .line 471
    :cond_11
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 474
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 475
    invoke-virtual {p0, p1, p2}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 476
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 477
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 478
    goto :goto_7

    .line 450
    :sswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_12

    goto :goto_6

    :cond_12
    move v3, v2

    .line 451
    :goto_6
    if-eqz v3, :cond_13

    .line 452
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 453
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 454
    goto :goto_7

    .line 455
    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 458
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 459
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 460
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 461
    goto :goto_7

    .line 434
    :sswitch_a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_14

    move v2, v3

    .line 435
    :cond_14
    if-eq v2, v3, :cond_15

    .line 436
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 437
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 438
    goto :goto_7

    .line 439
    :cond_15
    const-string p1, "android.hidl.manager@1.0::IServiceNotification"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 442
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 443
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 444
    invoke-virtual {p0, p1, p3, p2}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;->onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 445
    nop

    .line 614
    :cond_16
    :goto_7
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0xf43484e -> :sswitch_9
        0xf444247 -> :sswitch_8
        0xf445343 -> :sswitch_7
        0xf485348 -> :sswitch_6
        0xf494e54 -> :sswitch_5
        0xf4c5444 -> :sswitch_4
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2
        0xf535953 -> :sswitch_1
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 385
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    .line 413
    const-string v0, "android.hidl.manager@1.0::IServiceNotification"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 414
    return-object p0

    .line 416
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 420
    invoke-virtual {p0, p1}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;->registerService(Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 375
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    .line 407
    const/4 p1, 0x1

    return p1
.end method