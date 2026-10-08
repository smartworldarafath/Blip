.class public final synthetic Lb8;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb8;->j:I

    .line 3
    .line 4
    sget-object v0, Landroidx/compose/material/DrawerValue;->j:Landroidx/compose/material/DrawerValue;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lb8;->k:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 12
    iput p2, p0, Lb8;->j:I

    iput-object p1, p0, Lb8;->k:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lb8;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lb8;->k:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v0, Lnet/blip/libblip/event/RemoveDeviceThenLogout;

    .line 11
    .line 12
    sget-object v2, Lokio/ByteString;->m:Lokio/ByteString;

    .line 13
    .line 14
    invoke-direct {v0, v2}, Lnet/blip/libblip/event/RemoveDeviceThenLogout;-><init>(Lokio/ByteString;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-object v1

    .line 21
    :pswitch_0
    sget-object v0, Lnet/blip/android/ui/util/UmbrellaContentPickerType;->k:Lnet/blip/android/ui/util/UmbrellaContentPickerType;

    .line 22
    .line 23
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :pswitch_1
    sget-object v0, Lnet/blip/android/ui/util/UmbrellaContentPickerType;->j:Lnet/blip/android/ui/util/UmbrellaContentPickerType;

    .line 28
    .line 29
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :pswitch_2
    sget-object v0, Lnet/blip/android/ui/util/UmbrellaContentPickerType;->o:Lnet/blip/android/ui/util/UmbrellaContentPickerType;

    .line 34
    .line 35
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :pswitch_3
    sget-object v0, Lnet/blip/android/ui/util/UmbrellaContentPickerType;->n:Lnet/blip/android/ui/util/UmbrellaContentPickerType;

    .line 40
    .line 41
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    return-object v1

    .line 45
    :pswitch_4
    sget-object v0, Lnet/blip/android/ui/util/UmbrellaContentPickerType;->m:Lnet/blip/android/ui/util/UmbrellaContentPickerType;

    .line 46
    .line 47
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    return-object v1

    .line 51
    :pswitch_5
    sget-object v0, Lnet/blip/android/ui/util/UmbrellaContentPickerType;->l:Lnet/blip/android/ui/util/UmbrellaContentPickerType;

    .line 52
    .line 53
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    return-object v1

    .line 57
    :pswitch_6
    new-instance v0, Lnet/blip/libblip/event/Logout;

    .line 58
    .line 59
    sget-object v2, Lokio/ByteString;->m:Lokio/ByteString;

    .line 60
    .line 61
    invoke-direct {v0, v2}, Lnet/blip/libblip/event/Logout;-><init>(Lokio/ByteString;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    return-object v1

    .line 68
    :pswitch_7
    new-instance v0, Lnet/blip/libblip/event/OnboardingSkipSplash;

    .line 69
    .line 70
    sget-object v2, Lokio/ByteString;->m:Lokio/ByteString;

    .line 71
    .line 72
    invoke-direct {v0, v2}, Lnet/blip/libblip/event/OnboardingSkipSplash;-><init>(Lokio/ByteString;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    return-object v1

    .line 79
    :pswitch_8
    new-instance v0, Lnet/blip/libblip/event/OnboardingSkipShareInstructions;

    .line 80
    .line 81
    sget-object v2, Lokio/ByteString;->m:Lokio/ByteString;

    .line 82
    .line 83
    invoke-direct {v0, v2}, Lnet/blip/libblip/event/OnboardingSkipShareInstructions;-><init>(Lokio/ByteString;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    return-object v1

    .line 90
    :pswitch_9
    new-instance v0, Lnet/blip/libblip/event/OnboardingSkipEnableNotifications;

    .line 91
    .line 92
    sget-object v2, Lokio/ByteString;->m:Lokio/ByteString;

    .line 93
    .line 94
    invoke-direct {v0, v2}, Lnet/blip/libblip/event/OnboardingSkipEnableNotifications;-><init>(Lokio/ByteString;)V

    .line 95
    .line 96
    .line 97
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    return-object v1

    .line 101
    :pswitch_a
    new-instance v0, Lnet/blip/libblip/event/OnboardingSkipCompanionDeviceSetup;

    .line 102
    .line 103
    sget-object v2, Lokio/ByteString;->m:Lokio/ByteString;

    .line 104
    .line 105
    invoke-direct {v0, v2}, Lnet/blip/libblip/event/OnboardingSkipCompanionDeviceSetup;-><init>(Lokio/ByteString;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    return-object v1

    .line 112
    :pswitch_b
    sget-object v0, Lnet/blip/android/ui/util/UmbrellaContentPickerType;->n:Lnet/blip/android/ui/util/UmbrellaContentPickerType;

    .line 113
    .line 114
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    return-object v1

    .line 118
    :pswitch_c
    sget-object v0, Landroidx/compose/material/DrawerValue;->j:Landroidx/compose/material/DrawerValue;

    .line 119
    .line 120
    sget-object v1, Landroidx/compose/material/DrawerKt;->a:Landroidx/compose/animation/core/TweenSpec;

    .line 121
    .line 122
    new-instance v1, Landroidx/compose/material/DrawerState;

    .line 123
    .line 124
    invoke-direct {v1, v0, p0}, Landroidx/compose/material/DrawerState;-><init>(Landroidx/compose/material/DrawerValue;Lkotlin/jvm/functions/Function1;)V

    .line 125
    .line 126
    .line 127
    return-object v1

    .line 128
    nop

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
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
