.class Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;
.super Landroid/content/BroadcastReceiver;
.source "NBDefaultDataController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    .line 105
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->access$000(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;Ljava/lang/String;)V

    .line 110
    const-string v1, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    .line 111
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->removeMessages(I)V

    .line 113
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->access$100(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v1

    .line 114
    .local v1, "activeSubCount":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activeSubCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->access$000(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;Ljava/lang/String;)V

    .line 115
    sget v3, Lcom/qualcomm/qti/internal/telephony/NBDualCardConstans;->PHONE_COUNT:I

    if-ne v1, v3, :cond_0

    .line 116
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    invoke-virtual {v4, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 118
    :cond_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    .line 119
    invoke-virtual {v4, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    .line 118
    invoke-virtual {v3, v2, v4, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 121
    .end local v1    # "activeSubCount":I
    :goto_0
    goto :goto_1

    :cond_1
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->access$200(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;)V

    goto :goto_1

    .line 124
    :cond_2
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 125
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    invoke-static {v1, p2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->access$300(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;Landroid/content/Intent;)V

    goto :goto_1

    .line 126
    :cond_3
    const-string v1, "android.phone.action.CHANGE.PRIMARY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 127
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    invoke-static {v1, p2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->access$400(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;Landroid/content/Intent;)V

    .line 129
    :cond_4
    :goto_1
    return-void
.end method
