.class public final synthetic Lka;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/foundation/lazy/LazyListState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;I)V
    .locals 0

    .line 1
    iput p2, p0, Lka;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lka;->k:Landroidx/compose/foundation/lazy/LazyListState;

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
    iget v0, p0, Lka;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Lka;->k:Landroidx/compose/foundation/lazy/LazyListState;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->f:Landroidx/compose/runtime/MutableState;

    .line 9
    .line 10
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 17
    .line 18
    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->k:I

    .line 19
    .line 20
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->h()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 30
    .line 31
    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->o:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
