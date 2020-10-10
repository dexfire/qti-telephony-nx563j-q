.class public Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;
.super Landroid/os/Handler;
.source "NBDefaultDataController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;
    }
.end annotation


# static fields
.field private static final CARD_DETECTED_DELAY:I = 0xbb8

.field private static final DBG:Z = true

.field private static final DEFAULT_DATA_ICCID:Ljava/lang/String; = "default_data_iccid"

.field private static final DEFAULT_DATA_SLOT:Ljava/lang/String; = "default_data_slot"

.field private static final LOG_TAG:Ljava/lang/String; = "NBDefaultDataController"

.field private static final MANUAL_DATA_ENABLED:Ljava/lang/String; = "manual_data_enabled"

.field private static final MSG_CARD_PROVISION_STATE_CHANGED:I = 0x2

.field private static final NON_DEFAULT_DATA_ICCID:Ljava/lang/String; = "non_default_data_iccid"

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;


# instance fields
.field mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentIccIds:[Ljava/lang/String;

.field private mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTargetDefaultDataSlotPending:I


# direct methods
.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 82
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mTargetDefaultDataSlotPending:I

    .line 105
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;-><init>(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$2;-><init>(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 83
    const-string v0, "NBDefaultDataController()"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    .line 85
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    .line 86
    sget v0, Lcom/qualcomm/qti/internal/telephony/NBDualCardConstans;->PHONE_COUNT:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mCurrentIccIds:[Ljava/lang/String;

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v1, "android.phone.action.CHANGE.PRIMARY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    .line 30
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    .line 30
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->handleDefaultDataChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 30
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->handleSimStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 30
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->handleSwitchDefaultDataSlot(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    .line 30
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->handleSubInfoChanged()V

    return-void
.end method

.method private cleanTargetDefaultDataSlotPending()V
    .locals 3

    .line 432
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mTargetDefaultDataSlotPending:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clean pending target default data slot = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mTargetDefaultDataSlotPending:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 434
    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mTargetDefaultDataSlotPending:I

    .line 435
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 436
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 439
    :cond_0
    return-void
.end method

.method private getCardDataStatus([Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;)I
    .locals 5
    .param p1, "simDataType"    # [Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, "cardDataStatus":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 369
    .local v3, "type":Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;
    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->getValue()I

    move-result v4

    or-int/2addr v0, v4

    .line 368
    .end local v3    # "type":Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 371
    :cond_0
    return v0
.end method

.method private getCardDataType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;
    .locals 2
    .param p1, "iccid"    # Ljava/lang/String;
    .param p2, "lastDataIccid"    # Ljava/lang/String;
    .param p3, "lastUnDataIccid"    # Ljava/lang/String;

    .line 349
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_UNKNOWN:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    .line 350
    .local v0, "type":Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "N/A"

    .line 351
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SIM_NOT_PROVISIONED"

    .line 352
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 355
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_DATA:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    goto :goto_1

    .line 357
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 358
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 359
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_NOT_DATA:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    goto :goto_1

    .line 361
    :cond_2
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_NEW_CARD:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    goto :goto_1

    .line 353
    :cond_3
    :goto_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_UNKNOWN:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    .line 363
    :goto_1
    return-object v0
.end method

.method private getFirstTargetDataTypePhoneId([Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;)I
    .locals 3
    .param p1, "simDataType"    # [Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;
    .param p2, "targetDataType"    # Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    .line 376
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 377
    aget-object v1, p1, v0

    if-ne v1, p2, :cond_0

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "first target datatype["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] Slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 380
    return v0

    .line 376
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;
    .locals 3

    .line 74
    const-class v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    if-eqz v1, :cond_0

    .line 78
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    monitor-exit v0

    return-object v1

    .line 76
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "NBDefaultDataController was not initialized!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getLastDefaultDataIccid()Ljava/lang/String;
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "default_data_iccid"

    .line 339
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    return-object v0
.end method

.method private getLastUnDefaultDataIccid()Ljava/lang/String;
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "non_default_data_iccid"

    .line 344
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    return-object v0
.end method

.method private getPhoneIdIfHaveOnlyOneCardInsert([Ljava/lang/String;)I
    .locals 5
    .param p1, "iccids"    # [Ljava/lang/String;

    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, "insertCardCount":I
    const/4 v1, -0x1

    .line 327
    .local v1, "insertPhoneId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 328
    aget-object v3, p1, v2

    const-string v4, "N/A"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 329
    add-int/lit8 v0, v0, 0x1

    .line 330
    move v1, v2

    .line 327
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 333
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    if-ne v2, v0, :cond_2

    move v2, v1

    goto :goto_1

    .line 334
    :cond_2
    const/4 v2, -0x1

    .line 333
    :goto_1
    return v2
.end method

.method private getSimDataIccid(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .line 492
    const/4 v0, 0x0

    .line 493
    .local v0, "iccId":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getUiccIccId(I)Ljava/lang/String;

    move-result-object v0

    .line 497
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 498
    const-string v1, "N/A"

    return-object v1

    .line 499
    :cond_1
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v1

    .line 500
    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 502
    const-string v1, "SIM_NOT_PROVISIONED"

    return-object v1

    .line 504
    :cond_2
    return-object v0
.end method

.method private handleDefaultDataChanged()V
    .locals 3

    .line 162
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 161
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 163
    .local v0, "currentDefaultDataSlot":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDefaultDataChanged currentDefaultDataSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 165
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    return-void

    .line 168
    :cond_0
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->storeDefaultDataDistribution(I)V

    .line 169
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->updateDataEnabled()V

    .line 170
    return-void
.end method

.method private handleProvisonStateChanged()V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/NBDualCardUtils;->getVirtualCardSlot(Landroid/content/Context;)I

    move-result v0

    .line 142
    .local v0, "virtualCardSlot":I
    sget-boolean v1, Lcom/qualcomm/qti/internal/telephony/NBDualCardUtils;->NUBIA_ROAMING_ENABLE:Z

    if-eqz v1, :cond_1

    .line 143
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->cleanTargetDefaultDataSlotPending()V

    goto :goto_2

    .line 144
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->chooseDataSlotAccordingLastDds()I

    move-result v1

    .line 145
    .local v1, "newDefaultDataSlotId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleProvisonStateChanged setDefaultData on = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 148
    nop

    .line 149
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->isTargetDefaultDataSlotPending(I)Z

    move-result v2

    .line 148
    invoke-direct {p0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->setDefaultDataToTargetSlot(IZ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 150
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->pendingTargetDefaultDataSlot(I)V

    goto :goto_1

    .line 152
    :cond_2
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->cleanTargetDefaultDataSlotPending()V

    .line 155
    .end local v1    # "newDefaultDataSlotId":I
    :cond_3
    :goto_1
    nop

    .line 158
    :goto_2
    return-void
.end method

.method private handleSimStateChanged(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 173
    const-string v0, "slot"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 174
    .local v0, "slot":I
    const-string v1, "ss"

    .line 175
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "stateExtra":Ljava/lang/String;
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "LOADED"

    .line 178
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "IMSI"

    .line 179
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "NOT_READY"

    .line 189
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 190
    :cond_1
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->isTargetDefaultDataSlotPending(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "ABSENT"

    .line 191
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 192
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->cleanTargetDefaultDataSlotPending()V

    goto :goto_1

    .line 180
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->isTargetDefaultDataSlotPending(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSimStateChanged setDefaultData on PendingSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 182
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->setDefaultDataToTargetSlot(IZ)Z

    move-result v2

    if-nez v2, :cond_3

    .line 183
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->pendingTargetDefaultDataSlot(I)V

    goto :goto_1

    .line 185
    :cond_3
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->cleanTargetDefaultDataSlotPending()V

    .line 195
    :cond_4
    :goto_1
    return-void
.end method

.method private handleSubInfoChanged()V
    .locals 4

    .line 211
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mTargetDefaultDataSlotPending:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mTargetDefaultDataSlotPending:I

    .line 212
    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/NBDualCardUtils;->isSimReady(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mTargetDefaultDataSlotPending:I

    .line 214
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 215
    .local v0, "subIds":[I
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget v2, v0, v1

    .line 216
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    aget v1, v0, v1

    const v2, 0x7ffffffb

    if-ge v1, v2, :cond_1

    .line 218
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mTargetDefaultDataSlotPending:I

    .line 219
    .local v1, "targetDataSlotId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSubInfoChanged setDefaultData on PendingSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 221
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->setDefaultDataToTargetSlot(IZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 222
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->pendingTargetDefaultDataSlot(I)V

    goto :goto_0

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->cleanTargetDefaultDataSlotPending()V

    .line 228
    .end local v0    # "subIds":[I
    .end local v1    # "targetDataSlotId":I
    :cond_1
    :goto_0
    return-void
.end method

.method private handleSwitchDefaultDataSlot(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 198
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    .line 200
    .local v0, "currentDefaultDataSlotId":I
    const-string v1, "phone"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 202
    .local v1, "targetDefaultDataSlotId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSwitchDefaultDataSlot targetDefaultDataSlotId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 204
    if-eq v1, v0, :cond_0

    .line 205
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->setDefaultDataEnabledPending(Z)V

    .line 206
    invoke-direct {p0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->setDefaultDataToTargetSlot(IZ)Z

    .line 208
    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 66
    const-class v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    .line 70
    :cond_0
    monitor-exit v0

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isMobileDataEnabled(I)Z
    .locals 3
    .param p1, "subId"    # I

    .line 483
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    .line 484
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mobile_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 483
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    .line 486
    .local v0, "isEnabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSubId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]MobileDataEnabledNow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 488
    return v0
.end method

.method private isTargetDefaultDataSlotPending(I)Z
    .locals 2
    .param p1, "targetSlot"    # I

    .line 417
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mTargetDefaultDataSlotPending:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mTargetDefaultDataSlotPending:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 509
    const-string v0, "NBDefaultDataController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-void
.end method

.method private pendingTargetDefaultDataSlot(I)V
    .locals 2
    .param p1, "targetDataSlot"    # I

    .line 422
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mTargetDefaultDataSlotPending:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 423
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 424
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 427
    :cond_0
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mTargetDefaultDataSlotPending:I

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new pending target default data slot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mTargetDefaultDataSlotPending:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method private setDefaultDataToTargetSlot(IZ)Z
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "forceSet"    # Z

    .line 233
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 234
    .local v0, "subIds":[I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/qualcomm/qti/internal/telephony/NBDualCardUtils;->isSimReady(Landroid/content/Context;I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 235
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isFlexMapInProgress()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    aget v1, v0, v2

    .line 238
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    aget v1, v0, v2

    const v3, 0x7ffffffb

    if-ge v1, v3, :cond_2

    .line 240
    aget v1, v0, v2

    .line 241
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    if-ne v1, v3, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already on slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->storeDefaultDataDistribution(I)V

    .line 250
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->updateDataEnabled()V

    goto :goto_1

    .line 242
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "targetDefaultDataSlot = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", subId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->storeDefaultDataDistribution(I)V

    .line 245
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 253
    :goto_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_data_slot"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 256
    const/4 v1, 0x1

    return v1

    .line 258
    :cond_2
    return v2
.end method

.method private updateDataEnabled()V
    .locals 9

    .line 442
    const-string v0, "updateDataEnabled +"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 443
    const/4 v0, -0x1

    .line 444
    .local v0, "targetDefaultDataSlot":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 445
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defaultDataSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 448
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    return-void

    .line 451
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 452
    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 453
    .local v3, "unDefaultDataSlot":I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v4

    .line 454
    .local v4, "targetDefaultDataSubId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v5

    .line 455
    .local v5, "unDefaultDataSubId":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "targetDefaultDataSubId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", unDefaultDataSubId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 457
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    .line 458
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 459
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->isMobileDataEnabled(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 460
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->getDefaultDataEnabledPending()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 461
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDataSubid["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] Enable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v6, v4, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 464
    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->setDefaultDataEnabledPending(Z)V

    .line 467
    :cond_2
    invoke-virtual {v6, v5, v2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 468
    const-string v1, "updateDataEnabled -"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 469
    return-void
.end method


# virtual methods
.method public chooseDataSlotAccordingLastDds()I
    .locals 8

    .line 263
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/NBDualCardConstans;->PHONE_COUNT:I

    if-ge v1, v2, :cond_0

    .line 264
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mCurrentIccIds:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->getSimDataIccid(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentIccIds["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mCurrentIccIds:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/NBLogUtils;->getLogIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mCurrentIccIds:[Ljava/lang/String;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/NBDualCardUtils;->hasAnyValidCard([Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_1

    .line 269
    return v2

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/NBDualCardUtils;->isTwoCdmaCardInserted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 273
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v1

    .line 274
    invoke-virtual {v1, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v1

    .line 275
    .local v1, "currentPrivisionStatus0":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v3

    .line 276
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v3

    .line 277
    .local v3, "currentPrivisionStatus1":I
    if-ne v3, v4, :cond_2

    if-eq v1, v4, :cond_2

    .line 279
    return v4

    .line 280
    :cond_2
    if-ne v1, v4, :cond_3

    if-ne v3, v4, :cond_3

    .line 282
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v4

    .line 283
    .local v4, "mPreDefaultDataPhoneId":I
    if-eq v4, v2, :cond_3

    .line 284
    return v4

    .line 287
    .end local v4    # "mPreDefaultDataPhoneId":I
    :cond_3
    return v0

    .line 290
    .end local v1    # "currentPrivisionStatus0":I
    .end local v3    # "currentPrivisionStatus1":I
    :cond_4
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mCurrentIccIds:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->getPhoneIdIfHaveOnlyOneCardInsert([Ljava/lang/String;)I

    move-result v1

    .line 291
    .local v1, "theOnlyPhoneId":I
    if-eq v2, v1, :cond_5

    .line 292
    return v1

    .line 295
    :cond_5
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->getLastDefaultDataIccid()Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "lastDataIccid":Ljava/lang/String;
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->getLastUnDefaultDataIccid()Ljava/lang/String;

    move-result-object v4

    .line 297
    .local v4, "lastUnDataIccid":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lastDataIccid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/NBLogUtils;->getLogIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 298
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lastUnDataIccid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/NBLogUtils;->getLogIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 299
    sget v5, Lcom/qualcomm/qti/internal/telephony/NBDualCardConstans;->PHONE_COUNT:I

    new-array v5, v5, [Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    .line 300
    .local v5, "simDataType":[Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;
    nop

    .local v0, "i":I
    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_6

    .line 301
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mCurrentIccIds:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-direct {p0, v6, v3, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->getCardDataType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    move-result-object v6

    aput-object v6, v5, v0

    .line 303
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "simDataType["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v5, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 306
    .end local v0    # "i":I
    :cond_6
    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->getCardDataStatus([Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;)I

    move-result v0

    .line 307
    .local v0, "cardDataStatus":I
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_DATA:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->getValue()I

    move-result v6

    and-int/2addr v6, v0

    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_DATA:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    .line 308
    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_7

    .line 309
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_DATA:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    invoke-direct {p0, v5, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->getFirstTargetDataTypePhoneId([Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;)I

    move-result v2

    return v2

    .line 311
    :cond_7
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_NEW_CARD:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->getValue()I

    move-result v6

    and-int/2addr v6, v0

    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_NEW_CARD:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    .line 312
    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_8

    .line 313
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_NEW_CARD:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    invoke-direct {p0, v5, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->getFirstTargetDataTypePhoneId([Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;)I

    move-result v2

    return v2

    .line 315
    :cond_8
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_NOT_DATA:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->getValue()I

    move-result v6

    and-int/2addr v6, v0

    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_NOT_DATA:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    .line 316
    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_9

    .line 317
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_NOT_DATA:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    invoke-direct {p0, v5, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->getFirstTargetDataTypePhoneId([Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;)I

    move-result v2

    return v2

    .line 320
    :cond_9
    return v2
.end method

.method public getDefaultDataEnabledPending()Z
    .locals 3

    .line 478
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "manual_data_enabled"

    .line 479
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 478
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->handleProvisonStateChanged()V

    .line 103
    :goto_0
    return-void
.end method

.method public setDefaultDataEnabledPending(Z)V
    .locals 2
    .param p1, "maual"    # Z

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDefaultDataEnabledPending = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "manual_data_enabled"

    .line 474
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 475
    return-void
.end method

.method public storeDefaultDataDistribution(I)V
    .locals 6
    .param p1, "currentDataSlot"    # I

    .line 387
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/NBDualCardUtils;->NUBIA_ROAMING_ENABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    .line 389
    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/NBDualCardUtils;->getVirtualCardSlot(Landroid/content/Context;)I

    move-result v0

    .line 388
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mCurrentIccIds:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 391
    .local v0, "defaultDataIccId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "store defaultDataIccId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/NBLogUtils;->getLogIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",currentDataSlot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 391
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    .line 394
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 395
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "default_data_iccid"

    .line 398
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    goto :goto_0

    .line 399
    :cond_1
    nop

    .line 396
    move-object v3, v0

    :goto_0
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 399
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 401
    if-nez p1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    .line 402
    :cond_2
    const/4 v1, 0x0

    .line 403
    .local v1, "unDefaultDataSlot":I
    :goto_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mCurrentIccIds:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 404
    .local v2, "unDefaultDataIccId":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "store unDefaultDataIccId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/NBLogUtils;->getLogIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",unDefaultDataSlot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 404
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 406
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    .line 407
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 408
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "non_default_data_iccid"

    .line 411
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, ""

    goto :goto_2

    .line 412
    :cond_3
    nop

    .line 409
    move-object v5, v2

    :goto_2
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 412
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 414
    .end local v0    # "defaultDataIccId":Ljava/lang/String;
    .end local v1    # "unDefaultDataSlot":I
    .end local v2    # "unDefaultDataIccId":Ljava/lang/String;
    :cond_4
    return-void
.end method
