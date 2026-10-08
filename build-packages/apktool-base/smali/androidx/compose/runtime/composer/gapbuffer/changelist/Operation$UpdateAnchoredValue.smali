.class public final Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateAnchoredValue;
.super Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateAnchoredValue"
.end annotation


# static fields
.field public static final c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateAnchoredValue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateAnchoredValue;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateAnchoredValue;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateAnchoredValue;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Landroidx/compose/runtime/composer/RememberManager;Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;)V
    .locals 2

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;->b(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    const/4 p5, 0x1

    .line 7
    invoke-virtual {p1, p5}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;->b(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p5

    .line 11
    check-cast p5, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;->a(I)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    instance-of p1, p2, Landroidx/compose/runtime/RememberObserverHolder;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    move-object p1, p2

    .line 22
    check-cast p1, Landroidx/compose/runtime/RememberObserverHolder;

    .line 23
    .line 24
    move-object v0, p4

    .line 25
    check-cast v0, Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 26
    .line 27
    iget-object v1, v0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->e:Landroidx/compose/runtime/collection/MutableVector;

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, v0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->d:Landroidx/collection/MutableScatterSet;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p3, p5}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->c(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-virtual {p3, p1, p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->K(IILjava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    instance-of p1, p0, Landroidx/compose/runtime/RememberObserverHolder;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    check-cast p0, Landroidx/compose/runtime/RememberObserverHolder;

    .line 50
    .line 51
    check-cast p4, Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 52
    .line 53
    invoke-virtual {p4, p0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->e(Landroidx/compose/runtime/RememberObserverHolder;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    instance-of p1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    check-cast p0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/compose/runtime/RecomposeScopeImpl;->d()V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void
.end method
