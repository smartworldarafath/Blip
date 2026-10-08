.class final synthetic Lcom/google/android/gms/cloudmessaging/zzac;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# static fields
.field public static final synthetic j:Lcom/google/android/gms/cloudmessaging/zzac;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/cloudmessaging/zzac;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/cloudmessaging/zzac;->j:Lcom/google/android/gms/cloudmessaging/zzac;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final synthetic g(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->g()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Landroid/os/Bundle;

    .line 6
    .line 7
    const-string p1, "notification_data"

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/content/Intent;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    new-instance p1, Lcom/google/android/gms/cloudmessaging/CloudMessage;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/google/android/gms/cloudmessaging/CloudMessage;-><init>(Landroid/content/Intent;)V

    .line 20
    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method
