.class public final synthetic Lva;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lnet/blip/android/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lnet/blip/android/MainActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lva;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lva;->k:Lnet/blip/android/MainActivity;

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
    .locals 2

    .line 1
    iget v0, p0, Lva;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lva;->k:Lnet/blip/android/MainActivity;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-object v0, Lnet/blip/android/MainActivity;->G:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :pswitch_0
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lnet/blip/android/MainActivity;->E:Z

    .line 18
    .line 19
    return-object v1

    .line 20
    :pswitch_1
    sget-object v0, Lnet/blip/android/MainActivity;->G:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v0, Lnet/blip/android/ReviewRequestPrompt;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0}, Lnet/blip/android/ReviewRequestPrompt;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
