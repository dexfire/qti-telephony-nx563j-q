.class Lcom/motorola/android/internal/telephony/IMotoOemHookIndication$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMotoOemHookIndication.java"

# interfaces
.implements Lcom/motorola/android/internal/telephony/IMotoOemHookIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/IMotoOemHookIndication$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/motorola/android/internal/telephony/IMotoOemHookIndication;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/IMotoOemHookIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 79
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IMotoOemHookIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 86
    const-string v0, "com.motorola.android.internal.telephony.IMotoOemHookIndication"

    return-object v0
.end method

.method public onOemHookIndication(I[B)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 91
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 93
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.motorola.android.internal.telephony.IMotoOemHookIndication"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 96
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/IMotoOemHookIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 97
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/motorola/android/internal/telephony/IMotoOemHookIndication$Stub;->getDefaultImpl()Lcom/motorola/android/internal/telephony/IMotoOemHookIndication;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 98
    invoke-static {}, Lcom/motorola/android/internal/telephony/IMotoOemHookIndication$Stub;->getDefaultImpl()Lcom/motorola/android/internal/telephony/IMotoOemHookIndication;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/motorola/android/internal/telephony/IMotoOemHookIndication;->onOemHookIndication(I[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 99
    return-void

    .line 101
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 106
    nop

    .line 107
    return-void

    .line 104
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
