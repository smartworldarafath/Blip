.class public final synthetic Lue;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/foundation/ScrollNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/ScrollNode;I)V
    .locals 0

    .line 1
    iput p2, p0, Lue;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lue;->k:Landroidx/compose/foundation/ScrollNode;

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
    iget v0, p0, Lue;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Lue;->k:Landroidx/compose/foundation/ScrollNode;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/compose/foundation/ScrollNode;->x:Landroidx/compose/foundation/ScrollState;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/foundation/ScrollState;->f:Landroidx/compose/runtime/MutableIntState;

    .line 11
    .line 12
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->j()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    :goto_0
    int-to-float p0, p0

    .line 19
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :pswitch_0
    iget-object p0, p0, Landroidx/compose/foundation/ScrollNode;->x:Landroidx/compose/foundation/ScrollState;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/compose/foundation/ScrollState;->f()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
