.class public final Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaredrummler/android/device/DeviceName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceInfo"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->a:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->b:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->c:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "manufacturer"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->a:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "market_name"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->b:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "codename"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->c:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "model"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->d:Ljava/lang/String;

    .line 35
    .line 36
    return-void
.end method
