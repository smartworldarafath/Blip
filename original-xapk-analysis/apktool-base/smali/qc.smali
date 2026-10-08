.class public final synthetic Lqc;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Lnet/blip/libblip/HardwareInfo;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/HardwareInfo;I)V
    .locals 0

    .line 1
    iput p3, p0, Lqc;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lqc;->k:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iput-object p2, p0, Lqc;->l:Lnet/blip/libblip/HardwareInfo;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lqc;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lqc;->l:Lnet/blip/libblip/HardwareInfo;

    .line 6
    .line 7
    iget-object p0, p0, Lqc;->k:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    move-object v4, p1

    .line 13
    check-cast v4, Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v3, Lnet/blip/libblip/event/RegistrationRequested;

    .line 19
    .line 20
    move-object p1, v2

    .line 21
    check-cast p1, Lnet/blip/android/HardwareInfoAndroid;

    .line 22
    .line 23
    iget-object p1, p1, Lnet/blip/android/HardwareInfoAndroid;->a:Lkotlin/Lazy;

    .line 24
    .line 25
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljava/lang/String;

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    const-string p1, ""

    .line 34
    .line 35
    :cond_0
    move-object v5, p1

    .line 36
    check-cast v2, Lnet/blip/android/HardwareInfoAndroid;

    .line 37
    .line 38
    iget-object p1, v2, Lnet/blip/android/HardwareInfoAndroid;->b:Lkotlin/Lazy;

    .line 39
    .line 40
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    move-object v6, p1

    .line 45
    check-cast v6, Ljava/lang/String;

    .line 46
    .line 47
    iget-object v7, v2, Lnet/blip/android/HardwareInfoAndroid;->g:Lnet/blip/libblip/DeviceKind;

    .line 48
    .line 49
    sget-object v8, Lokio/ByteString;->m:Lokio/ByteString;

    .line 50
    .line 51
    invoke-direct/range {v3 .. v8}, Lnet/blip/libblip/event/RegistrationRequested;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/blip/libblip/DeviceKind;Lokio/ByteString;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p0, v3}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    return-object v1

    .line 58
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    new-instance v0, Lnet/blip/libblip/event/SendRegistrationCodeRequested;

    .line 64
    .line 65
    check-cast v2, Lnet/blip/android/HardwareInfoAndroid;

    .line 66
    .line 67
    iget-object v2, v2, Lnet/blip/android/HardwareInfoAndroid;->b:Lkotlin/Lazy;

    .line 68
    .line 69
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Ljava/lang/String;

    .line 74
    .line 75
    sget-object v3, Lokio/ByteString;->m:Lokio/ByteString;

    .line 76
    .line 77
    invoke-direct {v0, p1, v2, v3}, Lnet/blip/libblip/event/SendRegistrationCodeRequested;-><init>(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    return-object v1

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
