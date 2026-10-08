.class public final synthetic Landroidx/compose/ui/node/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

.field public final synthetic k:J

.field public final synthetic l:J

.field public final synthetic m:Landroidx/compose/ui/node/PlaceableResult;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/node/LookaheadCapablePlaceable;JJLandroidx/compose/ui/node/PlaceableResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/node/b;->j:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 5
    .line 6
    iput-wide p2, p0, Landroidx/compose/ui/node/b;->k:J

    .line 7
    .line 8
    iput-wide p4, p0, Landroidx/compose/ui/node/b;->l:J

    .line 9
    .line 10
    iput-object p6, p0, Landroidx/compose/ui/node/b;->m:Landroidx/compose/ui/node/PlaceableResult;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/b;->j:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->N0()Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    iput-boolean v2, v1, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->j:Z

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->N0()Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-wide v2, p0, Landroidx/compose/ui/node/b;->k:J

    .line 15
    .line 16
    iput-wide v2, v1, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->k:J

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->N0()Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-wide v2, p0, Landroidx/compose/ui/node/b;->l:J

    .line 23
    .line 24
    iput-wide v2, v1, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->l:J

    .line 25
    .line 26
    iget-object p0, p0, Landroidx/compose/ui/node/b;->m:Landroidx/compose/ui/node/PlaceableResult;

    .line 27
    .line 28
    iget-object p0, p0, Landroidx/compose/ui/node/PlaceableResult;->j:Landroidx/compose/ui/layout/MeasureResult;

    .line 29
    .line 30
    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->g()Lkotlin/jvm/functions/Function1;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->N0()Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    return-object p0
.end method
