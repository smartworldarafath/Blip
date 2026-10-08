.class public final synthetic Lh3;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lnet/blip/android/ui/navigation/NavResultWriter;


# direct methods
.method public synthetic constructor <init>(Lnet/blip/android/ui/navigation/NavResultWriter;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lh3;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lh3;->k:Lnet/blip/android/ui/navigation/NavResultWriter;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Lnet/blip/android/ui/navigation/NavResultWriter;I)V
    .locals 0

    .line 10
    const/4 p2, 0x0

    iput p2, p0, Lh3;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3;->k:Lnet/blip/android/ui/navigation/NavResultWriter;

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lh3;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object p0, p0, Lh3;->k:Lnet/blip/android/ui/navigation/NavResultWriter;

    .line 7
    .line 8
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 9
    .line 10
    check-cast p2, Ljava/lang/Integer;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    and-int/lit8 v0, p2, 0x3

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    const/4 v4, 0x0

    .line 23
    if-eq v0, v3, :cond_0

    .line 24
    .line 25
    move v0, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v0, v4

    .line 28
    :goto_0
    and-int/2addr p2, v2

    .line 29
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 30
    .line 31
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    invoke-static {p0, p1, v4}, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt;->b(Lnet/blip/android/ui/navigation/NavResultWriter;Landroidx/compose/runtime/Composer;I)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 42
    .line 43
    .line 44
    :goto_1
    return-object v1

    .line 45
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    invoke-static {p0, p1, p2}, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt;->b(Lnet/blip/android/ui/navigation/NavResultWriter;Landroidx/compose/runtime/Composer;I)V

    .line 53
    .line 54
    .line 55
    return-object v1

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
