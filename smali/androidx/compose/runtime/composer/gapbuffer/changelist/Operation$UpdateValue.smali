.class public final Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateValue;
.super Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateValue"
.end annotation


# static fields
.field public static final c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateValue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateValue;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1, v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;-><init>(II)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateValue;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateValue;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Landroidx/compose/runtime/composer/RememberManager;Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;)V
    .locals 1

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;->b(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;->a(I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    instance-of p1, p2, Landroidx/compose/runtime/RememberObserverHolder;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    move-object p1, p2

    .line 15
    check-cast p1, Landroidx/compose/runtime/RememberObserverHolder;

    .line 16
    .line 17
    move-object p5, p4

    .line 18
    check-cast p5, Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 19
    .line 20
    iget-object v0, p5, Landroidx/compose/runtime/internal/RememberEventDispatcher;->e:Landroidx/compose/runtime/collection/MutableVector;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object p5, p5, Landroidx/compose/runtime/internal/RememberEventDispatcher;->d:Landroidx/collection/MutableScatterSet;

    .line 26
    .line 27
    invoke-virtual {p5, p1}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    iget p1, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->t:I

    .line 31
    .line 32
    invoke-virtual {p3, p1, p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->K(IILjava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    instance-of p1, p0, Landroidx/compose/runtime/RememberObserverHolder;

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    check-cast p0, Landroidx/compose/runtime/RememberObserverHolder;

    .line 41
    .line 42
    check-cast p4, Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 43
    .line 44
    invoke-virtual {p4, p0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->e(Landroidx/compose/runtime/RememberObserverHolder;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    instance-of p1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    check-cast p0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/compose/runtime/RecomposeScopeImpl;->d()V

    .line 55
    .line 56
    .line 57
    :cond_2
    return-void
.end method
