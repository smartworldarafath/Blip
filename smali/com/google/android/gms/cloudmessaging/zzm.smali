.class final synthetic Lcom/google/android/gms/cloudmessaging/zzm;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Lcom/google/android/gms/cloudmessaging/zzp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cloudmessaging/zzp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/zzm;->j:Lcom/google/android/gms/cloudmessaging/zzp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 1

    .line 1
    const-string v0, "Service disconnected"

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/gms/cloudmessaging/zzm;->j:Lcom/google/android/gms/cloudmessaging/zzp;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cloudmessaging/zzp;->b(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
