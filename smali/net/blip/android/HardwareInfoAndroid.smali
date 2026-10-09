.class public final Lnet/blip/android/HardwareInfoAndroid;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lnet/blip/libblip/HardwareInfo;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HardwareIds"
    }
.end annotation


# instance fields
.field public final a:Lkotlin/Lazy;

.field public final b:Lkotlin/Lazy;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lnet/blip/libblip/DeviceKind;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lc9;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p1, v1}, Lc9;-><init>(Landroid/content/Context;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lnet/blip/android/HardwareInfoAndroid;->a:Lkotlin/Lazy;

    .line 15
    .line 16
    new-instance v0, Lj6;

    .line 17
    .line 18
    const/16 v1, 0x17

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lj6;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lnet/blip/android/HardwareInfoAndroid;->b:Lkotlin/Lazy;

    .line 28
    .line 29
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v0, p0, Lnet/blip/android/HardwareInfoAndroid;->c:Ljava/lang/String;

    .line 32
    .line 33
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v0, p0, Lnet/blip/android/HardwareInfoAndroid;->d:Ljava/lang/String;

    .line 36
    .line 37
    const-string v0, "Android"

    .line 38
    .line 39
    iput-object v0, p0, Lnet/blip/android/HardwareInfoAndroid;->e:Ljava/lang/String;

    .line 40
    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 42
    .line 43
    const-string v1, "SDK "

    .line 44
    .line 45
    invoke-static {v0, v1}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lnet/blip/android/HardwareInfoAndroid;->f:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 60
    .line 61
    and-int/lit8 p1, p1, 0xf

    .line 62
    .line 63
    const/4 v0, 0x4

    .line 64
    if-lt p1, v0, :cond_0

    .line 65
    .line 66
    sget-object p1, Lnet/blip/libblip/DeviceKind;->o:Lnet/blip/libblip/DeviceKind;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    sget-object p1, Lnet/blip/libblip/DeviceKind;->n:Lnet/blip/libblip/DeviceKind;

    .line 70
    .line 71
    :goto_0
    iput-object p1, p0, Lnet/blip/android/HardwareInfoAndroid;->g:Lnet/blip/libblip/DeviceKind;

    .line 72
    .line 73
    return-void
.end method
