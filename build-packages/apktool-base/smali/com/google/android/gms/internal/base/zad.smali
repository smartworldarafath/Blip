.class public abstract Lcom/google/android/gms/internal/base/zad;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lcom/google/android/gms/common/Feature;

.field public static final b:Lcom/google/android/gms/common/Feature;

.field public static final c:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 2
    .line 3
    const-string v1, "CLIENT_TELEMETRY"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/base/zad;->a:Lcom/google/android/gms/common/Feature;

    .line 9
    .line 10
    new-instance v1, Lcom/google/android/gms/common/Feature;

    .line 11
    .line 12
    const-string v2, "CLIENT_NOTIFICATION_TELEMETRY"

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/google/android/gms/internal/base/zad;->b:Lcom/google/android/gms/common/Feature;

    .line 18
    .line 19
    filled-new-array {v0, v1}, [Lcom/google/android/gms/common/Feature;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/google/android/gms/internal/base/zad;->c:[Lcom/google/android/gms/common/Feature;

    .line 24
    .line 25
    return-void
.end method
