.class public interface abstract Lcom/motorola/android/internal/telephony/IMotoOemHookIndication;
.super Ljava/lang/Object;
.source "IMotoOemHookIndication.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/IMotoOemHookIndication$Stub;,
        Lcom/motorola/android/internal/telephony/IMotoOemHookIndication$Default;
    }
.end annotation


# virtual methods
.method public abstract onOemHookIndication(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
