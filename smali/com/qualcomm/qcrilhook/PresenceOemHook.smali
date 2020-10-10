.class public Lcom/qualcomm/qcrilhook/PresenceOemHook;
.super Ljava/lang/Object;
.source "PresenceOemHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;,
        Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;,
        Lcom/qualcomm/qcrilhook/PresenceOemHook$SubscriptionType;
    }
.end annotation


# static fields
.field public static final IMS_ENABLER_RESPONSE:[Ljava/lang/String;

.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final OEM_HOOK_UNSOL_IND:I = 0x1

.field private static final PRESENCE_SERVICE_ID:S = 0x3s

.field public static final QCRILHOOK_PRESENCE_IMS_ENABLER_STATE_REQ:S = 0x24s

.field public static final QCRILHOOK_PRESENCE_IMS_GET_EVENT_REPORT_REQ:S = 0x2es

.field public static final QCRILHOOK_PRESENCE_IMS_GET_NOTIFY_FMT_REQ:S = 0x2cs

.field public static final QCRILHOOK_PRESENCE_IMS_SEND_PUBLISH_REQ:S = 0x25s

.field public static final QCRILHOOK_PRESENCE_IMS_SEND_PUBLISH_XML_REQ:S = 0x26s

.field public static final QCRILHOOK_PRESENCE_IMS_SEND_SUBSCRIBE_REQ:S = 0x28s

.field public static final QCRILHOOK_PRESENCE_IMS_SEND_SUBSCRIBE_XML_REQ:S = 0x29s

.field public static final QCRILHOOK_PRESENCE_IMS_SEND_UNPUBLISH_REQ:S = 0x27s

.field public static final QCRILHOOK_PRESENCE_IMS_SEND_UNSUBSCRIBE_REQ:S = 0x2as

.field public static final QCRILHOOK_PRESENCE_IMS_SET_EVENT_REPORT_REQ:S = 0x2ds

.field public static final QCRILHOOK_PRESENCE_IMS_SET_NOTIFY_FMT_REQ:S = 0x2bs

.field public static final QCRILHOOK_PRESENCE_IMS_UNSOL_ENABLER_STATE:S = 0x23s

.field public static final QCRILHOOK_PRESENCE_IMS_UNSOL_NOTIFY_UPDATE:S = 0x22s

.field public static final QCRILHOOK_PRESENCE_IMS_UNSOL_NOTIFY_XML_UPDATE:S = 0x21s

.field public static final QCRILHOOK_PRESENCE_IMS_UNSOL_PUBLISH_TRIGGER:S = 0x20s

.field private static mInstance:Lcom/qualcomm/qcrilhook/PresenceOemHook;

.field private static mRefCount:I


# instance fields
.field mContext:Landroid/content/Context;

.field private mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 30
    const-string v0, "PresenceOemHook"

    sput-object v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    .line 54
    const-string v0, "UNKNOWN"

    const-string v1, "UNINITIALIZED"

    const-string v2, "INITIALIZED"

    const-string v3, "AIRPLANE"

    const-string v4, "REGISTERED"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->IMS_ENABLER_RESPONSE:[Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    sput v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mRefCount:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listenerLooper"    # Landroid/os/Looper;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {p1, p2}, Lcom/qualcomm/qcrilhook/QmiOemHook;->getInstance(Landroid/content/Context;Landroid/os/Looper;)Lcom/qualcomm/qcrilhook/QmiOemHook;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    .line 89
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/qualcomm/qcrilhook/PresenceOemHook;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listenerHandler"    # Landroid/os/Handler;

    .line 102
    sget-object v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mInstance:Lcom/qualcomm/qcrilhook/PresenceOemHook;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/qualcomm/qcrilhook/PresenceOemHook;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mInstance:Lcom/qualcomm/qcrilhook/PresenceOemHook;

    .line 109
    const/4 v0, 0x3

    invoke-static {v0, p1, v1}, Lcom/qualcomm/qcrilhook/QmiOemHook;->registerService(SLandroid/os/Handler;I)V

    .line 113
    sget-object v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Registered PresenceOemHook with QmiOemHook"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :cond_0
    sget-object v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mInstance:Lcom/qualcomm/qcrilhook/PresenceOemHook;

    iput-object p0, v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mContext:Landroid/content/Context;

    .line 117
    :goto_0
    sget v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mRefCount:I

    add-int/2addr v0, v1

    sput v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mRefCount:I

    .line 118
    sget-object v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mInstance:Lcom/qualcomm/qcrilhook/PresenceOemHook;

    return-object v0
.end method

.method public static handleMessage(Landroid/os/Message;)Ljava/lang/Object;
    .locals 5
    .param p0, "msg"    # Landroid/os/Message;

    .line 636
    iget v0, p0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 646
    sget-object v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recieved msg.what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return-object v1

    .line 638
    :cond_0
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 639
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    .line 640
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    if-nez v2, :cond_1

    .line 641
    sget-object v3, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Hashmap async userobj is NULL"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    return-object v1

    .line 644
    :cond_1
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PresenceOemHook;->receive(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static receive(Ljava/util/HashMap;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 351
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 352
    .local v0, "requestId":I
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 353
    .local v1, "responseSize":I
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 354
    .local v2, "successStatus":I
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    .line 357
    .local v3, "messageId":S
    nop

    .line 358
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 363
    .local v4, "respByteBuf":Ljava/nio/ByteBuffer;
    sget-object v5, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive respByteBuf = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    sget-object v5, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " responseSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " successStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " messageId= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 369
    .local v5, "returnObject":Ljava/lang/Object;
    const/4 v6, -0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    .line 555
    :pswitch_0
    sget-object v7, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Response: QCRILHOOK_PRESENCE_IMS_GET_EVENT_REPORT_REQ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    new-instance v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;

    invoke-direct {v7}, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;-><init>()V

    .line 561
    .local v7, "presenceSolResp":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;
    if-nez v2, :cond_0

    .line 563
    invoke-static {v4}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->parseGetEventReport(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 565
    .local v6, "val":I
    iput v2, v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->result:I

    .line 566
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->data:Ljava/lang/Object;

    .line 568
    sget-object v8, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Response: QCRILHOOK_PRESENCE_IMS_GET_EVENT_REPORT_REQ event_report_bit_masks="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    .end local v6    # "val":I
    goto :goto_0

    .line 574
    :cond_0
    iput v2, v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->result:I

    .line 575
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->data:Ljava/lang/Object;

    .line 578
    :goto_0
    move-object v5, v7

    .line 580
    goto/16 :goto_2

    .line 540
    .end local v7    # "presenceSolResp":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;
    :pswitch_1
    sget-object v7, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Response: QCRILHOOK_PRESENCE_IMS_SET_EVENT_REPORT_REQ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    new-instance v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;

    invoke-direct {v7}, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;-><init>()V

    .line 545
    .restart local v7    # "presenceSolResp":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;
    iput v2, v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->result:I

    .line 546
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->data:Ljava/lang/Object;

    .line 548
    move-object v5, v7

    .line 550
    goto/16 :goto_2

    .line 511
    .end local v7    # "presenceSolResp":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;
    :pswitch_2
    sget-object v7, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Response: QCRILHOOK_PRESENCE_IMS_GET_NOTIFY_FMT_REQ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    new-instance v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;

    invoke-direct {v7}, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;-><init>()V

    .line 517
    .restart local v7    # "presenceSolResp":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;
    if-nez v2, :cond_1

    .line 519
    invoke-static {v4}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->parseGetNotifyReq(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 521
    .restart local v6    # "val":I
    iput v2, v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->result:I

    .line 522
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->data:Ljava/lang/Object;

    .line 524
    sget-object v8, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Response: QCRILHOOK_PRESENCE_IMS_GET_NOTIFY_FMT_REQ update_with_struct_info="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    .end local v6    # "val":I
    goto :goto_1

    .line 529
    :cond_1
    iput v2, v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->result:I

    .line 530
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->data:Ljava/lang/Object;

    .line 533
    :goto_1
    move-object v5, v7

    .line 535
    goto/16 :goto_2

    .line 497
    .end local v7    # "presenceSolResp":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;
    :pswitch_3
    sget-object v7, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Response: QCRILHOOK_PRESENCE_IMS_SET_NOTIFY_FMT_REQ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    new-instance v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;

    invoke-direct {v7}, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;-><init>()V

    .line 502
    .restart local v7    # "presenceSolResp":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;
    iput v2, v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->result:I

    .line 503
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->data:Ljava/lang/Object;

    .line 505
    move-object v5, v7

    .line 506
    goto/16 :goto_2

    .line 446
    .end local v7    # "presenceSolResp":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;
    :pswitch_4
    sget-object v6, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Response: QCRILHOOK_PRESENCE_IMS_SEND_UNSUBSCRIBE_REQ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    goto/16 :goto_2

    .line 429
    :pswitch_5
    sget-object v6, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Response: QCRILHOOK_PRESENCE_IMS_SEND_SUBSCRIBE_XML_REQ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    goto/16 :goto_2

    .line 420
    :pswitch_6
    sget-object v6, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Response: QCRILHOOK_PRESENCE_IMS_SEND_SUBSCRIBE_REQ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    goto/16 :goto_2

    .line 438
    :pswitch_7
    sget-object v6, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Response: QCRILHOOK_PRESENCE_IMS_SEND_UNPUBLISH_REQ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    goto/16 :goto_2

    .line 412
    :pswitch_8
    sget-object v6, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Response: QCRILHOOK_PRESENCE_IMS_SEND_PUBLISH_XML_REQ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    goto/16 :goto_2

    .line 405
    :pswitch_9
    sget-object v6, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Response: QCRILHOOK_PRESENCE_IMS_SEND_PUBLISH_REQ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    goto/16 :goto_2

    .line 372
    :pswitch_a
    const/4 v6, 0x0

    .line 373
    .local v6, "enablerState":I
    new-instance v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;

    invoke-direct {v7}, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;-><init>()V

    .line 375
    .restart local v7    # "presenceSolResp":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;
    if-nez v2, :cond_2

    .line 377
    invoke-static {v4}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->parseEnablerState(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 379
    sget-object v8, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Enabler state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iput v2, v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->result:I

    .line 382
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->data:Ljava/lang/Object;

    .line 383
    move-object v5, v7

    .line 385
    sget-object v8, Lcom/qualcomm/qcrilhook/PresenceOemHook;->IMS_ENABLER_RESPONSE:[Ljava/lang/String;

    aget-object v8, v8, v6

    .line 387
    .local v8, "state":Ljava/lang/String;
    sget-object v9, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Response: QCRILHOOK_PRESENCE_IMS_ENABLER_STATE_REQ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    goto/16 :goto_2

    .line 392
    .end local v8    # "state":Ljava/lang/String;
    :cond_2
    sget-object v8, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OemHookError: QCRILHOOK_PRESENCE_IMS_ENABLER_STATE_REQ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iput v2, v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->result:I

    .line 397
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->data:Ljava/lang/Object;

    .line 399
    return-object v7

    .line 606
    .end local v6    # "enablerState":I
    .end local v7    # "presenceSolResp":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;
    :pswitch_b
    sget-object v6, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Response: QCRILHOOK_PRESENCE_IMS_UNSOL_ENABLER_STATE="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-static {v4}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->parseEnablerStateInd(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 613
    .local v6, "val":I
    new-instance v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;

    invoke-direct {v7}, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;-><init>()V

    .line 614
    .local v7, "ind":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;
    const/16 v8, 0x23

    iput v8, v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;->oemHookMesgId:I

    .line 615
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;->obj:Ljava/lang/Object;

    .line 617
    sget-object v8, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Response: QCRILHOOK_PRESENCE_IMS_UNSOL_ENABLER_STATE result="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " enabler_state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    move-object v5, v7

    .line 623
    goto/16 :goto_2

    .line 455
    .end local v6    # "val":I
    .end local v7    # "ind":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;
    :pswitch_c
    sget-object v6, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ind: QCRILHOOK_PRESENCE_IMS_UNSOL_NOTIFY_UPDATE="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v6, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;

    invoke-direct {v6}, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;-><init>()V

    .line 458
    .local v6, "presenceUnSolInd":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;
    const/16 v7, 0x22

    iput v7, v6, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;->oemHookMesgId:I

    .line 459
    nop

    .line 460
    invoke-static {v4, v1, v2}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->parseNotifyUpdate(Ljava/nio/ByteBuffer;II)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v6, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;->obj:Ljava/lang/Object;

    .line 464
    move-object v5, v6

    .line 466
    goto :goto_2

    .line 471
    .end local v6    # "presenceUnSolInd":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;
    :pswitch_d
    sget-object v6, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ind: QCRILHOOK_PRESENCE_IMS_UNSOL_NOTIFY_XML_UPDATE="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-static {v4}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->parseNotifyUpdateXML(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v6

    .line 486
    .local v6, "xml":Ljava/lang/String;
    new-instance v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;

    invoke-direct {v7}, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;-><init>()V

    .line 487
    .local v7, "presenceUnSolInd":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;
    const/16 v8, 0x21

    iput v8, v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;->oemHookMesgId:I

    .line 488
    iput-object v6, v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;->obj:Ljava/lang/Object;

    .line 490
    move-object v5, v7

    .line 492
    goto :goto_2

    .line 585
    .end local v6    # "xml":Ljava/lang/String;
    .end local v7    # "presenceUnSolInd":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;
    :pswitch_e
    sget-object v6, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Response: QCRILHOOK_PRESENCE_IMS_UNSOL_PUBLISH_TRIGGER="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-static {v4}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->parsePublishTrigger(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 591
    .local v6, "val":I
    new-instance v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;

    invoke-direct {v7}, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;-><init>()V

    .line 592
    .local v7, "ind":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;
    const/16 v8, 0x20

    iput v8, v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;->oemHookMesgId:I

    .line 593
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;->obj:Ljava/lang/Object;

    .line 595
    sget-object v8, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Response: QCRILHOOK_PRESENCE_IMS_UNSOL_PUBLISH_TRIGGER result="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " publish_trigger="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    move-object v5, v7

    .line 601
    nop

    .line 628
    .end local v6    # "val":I
    .end local v7    # "ind":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;
    :goto_2
    return-object v5

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 3

    monitor-enter p0

    .line 122
    :try_start_0
    sget v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mRefCount:I

    .line 123
    sget v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mRefCount:I

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v1, "dispose(): Unregistering service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->unregisterService(I)V

    .line 126
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->dispose()V

    .line 127
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mInstance:Lcom/qualcomm/qcrilhook/PresenceOemHook;

    goto :goto_0

    .line 130
    :cond_0
    sget-object v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispose mRefCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :goto_0
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/qualcomm/qcrilhook/PresenceOemHook;
    throw v0
.end method

.method protected finalize()V
    .locals 2

    .line 652
    sget-object v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v1, "finalize() hit"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return-void
.end method

.method public imsp_get_enabler_state_req()Ljava/lang/Object;
    .locals 6

    .line 136
    new-instance v0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NoTlvPayloadRequest;

    invoke-direct {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NoTlvPayloadRequest;-><init>()V

    .line 139
    .local v0, "req":Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NoTlvPayloadRequest;
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v2, 0x3

    const/16 v3, 0x24

    .line 142
    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NoTlvPayloadRequest;->getTypes()[S

    move-result-object v4

    .line 143
    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NoTlvPayloadRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v5

    .line 139
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;

    move-result-object v1

    .line 144
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PresenceOemHook;->receive(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 145
    .end local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 147
    const/4 v2, 0x0

    return-object v2
.end method

.method public imsp_get_event_report_req()Ljava/lang/Object;
    .locals 5

    .line 319
    new-instance v0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NoTlvPayloadRequest;

    invoke-direct {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NoTlvPayloadRequest;-><init>()V

    .line 322
    .local v0, "req":Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NoTlvPayloadRequest;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v3, 0x3

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4, v1, v1}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;

    move-result-object v2

    .line 325
    .local v2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PresenceOemHook;->receive(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 326
    .end local v2    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :catch_0
    move-exception v2

    .line 327
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 328
    return-object v1
.end method

.method public imsp_get_notify_fmt_req()Ljava/lang/Object;
    .locals 5

    .line 287
    new-instance v0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NoTlvPayloadRequest;

    invoke-direct {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NoTlvPayloadRequest;-><init>()V

    .line 290
    .local v0, "req":Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NoTlvPayloadRequest;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v3, 0x3

    const/16 v4, 0x2c

    invoke-virtual {v2, v3, v4, v1, v1}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;

    move-result-object v2

    .line 293
    .local v2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PresenceOemHook;->receive(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 294
    .end local v2    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :catch_0
    move-exception v2

    .line 295
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 296
    return-object v1
.end method

.method public imsp_send_publish_req(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Ljava/lang/Integer;
    .locals 11
    .param p1, "publish_status"    # I
    .param p2, "contact_uri"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "ver"    # Ljava/lang/String;
    .param p5, "service_id"    # Ljava/lang/String;
    .param p6, "is_audio_supported"    # I
    .param p7, "audio_capability"    # I
    .param p8, "is_video_supported"    # I
    .param p9, "video_capability"    # I

    .line 161
    new-instance v0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$PublishStructRequest;

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$PublishStructRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    move-object v1, v0

    .line 172
    .local v1, "req":Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$PublishStructRequest;
    move-object v2, p0

    :try_start_0
    iget-object v0, v2, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v3, 0x3

    const/16 v4, 0x25

    .line 174
    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$PublishStructRequest;->getTypes()[S

    move-result-object v5

    .line 175
    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$PublishStructRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v6

    .line 172
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;

    move-result-object v0

    .line 176
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/PresenceOemHook;->receive(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 177
    .end local v0    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 179
    const/4 v3, 0x0

    return-object v3
.end method

.method public imsp_send_publish_xml_req(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .param p1, "xml"    # Ljava/lang/String;

    .line 184
    new-instance v0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$PublishXMLRequest;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$PublishXMLRequest;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, "req":Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$PublishXMLRequest;
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v2, 0x3

    const/16 v3, 0x26

    .line 189
    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$PublishXMLRequest;->getTypes()[S

    move-result-object v4

    .line 190
    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$PublishXMLRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v5

    .line 187
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;

    move-result-object v1

    .line 191
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PresenceOemHook;->receive(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 192
    .end local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 194
    const/4 v2, 0x0

    return-object v2
.end method

.method public imsp_send_subscribe_req(Lcom/qualcomm/qcrilhook/PresenceOemHook$SubscriptionType;Ljava/util/ArrayList;)Ljava/lang/Integer;
    .locals 6
    .param p1, "subscriptionType"    # Lcom/qualcomm/qcrilhook/PresenceOemHook$SubscriptionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qcrilhook/PresenceOemHook$SubscriptionType;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 218
    .local p2, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$SubscribeStructRequest;

    invoke-direct {v0, p1, p2}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$SubscribeStructRequest;-><init>(Lcom/qualcomm/qcrilhook/PresenceOemHook$SubscriptionType;Ljava/util/ArrayList;)V

    .line 221
    .local v0, "req":Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$SubscribeStructRequest;
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v2, 0x3

    const/16 v3, 0x28

    .line 224
    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$SubscribeStructRequest;->getTypes()[S

    move-result-object v4

    .line 225
    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$SubscribeStructRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v5

    .line 221
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;

    move-result-object v1

    .line 226
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PresenceOemHook;->receive(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 227
    .end local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 229
    const/4 v2, 0x0

    return-object v2
.end method

.method public imsp_send_subscribe_xml_req(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .param p1, "xml"    # Ljava/lang/String;

    .line 235
    new-instance v0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$SubscribeXMLRequest;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$SubscribeXMLRequest;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, "req":Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$SubscribeXMLRequest;
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v2, 0x3

    const/16 v3, 0x29

    .line 241
    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$SubscribeXMLRequest;->getTypes()[S

    move-result-object v4

    .line 242
    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$SubscribeXMLRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v5

    .line 238
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;

    move-result-object v1

    .line 243
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PresenceOemHook;->receive(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 244
    .end local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 246
    const/4 v2, 0x0

    return-object v2
.end method

.method public imsp_send_unpublish_req()Ljava/lang/Integer;
    .locals 5

    .line 201
    new-instance v0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$UnPublish$UnPublishRequest;

    invoke-direct {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$UnPublish$UnPublishRequest;-><init>()V

    .line 204
    .local v0, "req":Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$UnPublish$UnPublishRequest;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v3, 0x3

    const/16 v4, 0x27

    invoke-virtual {v2, v3, v4, v1, v1}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;

    move-result-object v2

    .line 207
    .local v2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PresenceOemHook;->receive(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 208
    .end local v2    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :catch_0
    move-exception v2

    .line 209
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 210
    return-object v1
.end method

.method public imsp_send_unsubscribe_req(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .param p1, "peerURI"    # Ljava/lang/String;

    .line 253
    new-instance v0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$UnSubscribe$UnSubscribeRequest;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$UnSubscribe$UnSubscribeRequest;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, "req":Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$UnSubscribe$UnSubscribeRequest;
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v2, 0x3

    const/16 v3, 0x2a

    .line 259
    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$UnSubscribe$UnSubscribeRequest;->getTypes()[S

    move-result-object v4

    .line 260
    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$UnSubscribe$UnSubscribeRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v5

    .line 256
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;

    move-result-object v1

    .line 261
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PresenceOemHook;->receive(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 262
    .end local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 264
    const/4 v2, 0x0

    return-object v2
.end method

.method public imsp_set_event_report_req(I)Ljava/lang/Object;
    .locals 6
    .param p1, "mask"    # I

    .line 302
    new-instance v0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$SetEventReport;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$SetEventReport;-><init>(I)V

    .line 305
    .local v0, "req":Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$SetEventReport;
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v2, 0x3

    const/16 v3, 0x2d

    .line 308
    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$SetEventReport;->getTypes()[S

    move-result-object v4

    .line 309
    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$SetEventReport;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v5

    .line 305
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;

    move-result-object v1

    .line 310
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PresenceOemHook;->receive(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 311
    .end local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :catch_0
    move-exception v1

    .line 312
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 313
    const/4 v2, 0x0

    return-object v2
.end method

.method public imsp_set_notify_fmt_req(I)Ljava/lang/Object;
    .locals 6
    .param p1, "flag"    # I

    .line 270
    new-instance v0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NotifyFmt$SetFmt;

    int-to-short v1, p1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NotifyFmt$SetFmt;-><init>(S)V

    .line 273
    .local v0, "req":Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NotifyFmt$SetFmt;
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v2, 0x3

    const/16 v3, 0x2b

    .line 276
    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NotifyFmt$SetFmt;->getTypes()[S

    move-result-object v4

    .line 277
    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NotifyFmt$SetFmt;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v5

    .line 273
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;

    move-result-object v1

    .line 278
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PresenceOemHook;->receive(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 279
    .end local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 281
    const/4 v2, 0x0

    return-object v2
.end method
