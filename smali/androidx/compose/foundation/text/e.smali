.class public final synthetic Landroidx/compose/foundation/text/e;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/foundation/text/HeightInLinesNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/HeightInLinesNode;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/compose/foundation/text/e;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/foundation/text/e;->k:Landroidx/compose/foundation/text/HeightInLinesNode;

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
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/foundation/text/e;->j:I

    .line 2
    .line 3
    const-string v1, "Font resolution state is not set."

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/foundation/text/e;->k:Landroidx/compose/foundation/text/HeightInLinesNode;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->E:Landroidx/compose/ui/text/font/TypefaceResult;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-object v2

    .line 20
    :cond_0
    invoke-static {v1}, Lq;->C(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    throw p0

    .line 25
    :pswitch_0
    iget-object p0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->E:Landroidx/compose/ui/text/font/TypefaceResult;

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    return-object v2

    .line 33
    :cond_1
    invoke-static {v1}, Lq;->C(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    throw p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
