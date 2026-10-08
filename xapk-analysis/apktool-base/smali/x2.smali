.class public final synthetic Lx2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lnet/blip/android/App;


# direct methods
.method public synthetic constructor <init>(Lnet/blip/android/App;I)V
    .locals 0

    .line 1
    iput p2, p0, Lx2;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lx2;->k:Lnet/blip/android/App;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lx2;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Lx2;->k:Lnet/blip/android/App;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object v0, Lnet/blip/android/App;->m:Landroid/content/Context;

    .line 9
    .line 10
    new-instance v0, Lnet/blip/android/HardwareInfoAndroid;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lnet/blip/android/HardwareInfoAndroid;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :pswitch_0
    sget-object v0, Lnet/blip/android/App;->m:Landroid/content/Context;

    .line 24
    .line 25
    new-instance v0, Lnet/blip/android/FlavorAndroid;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, p0}, Lnet/blip/android/FlavorAndroid;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
