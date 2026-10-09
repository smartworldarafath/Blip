.class public final Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RememberPausingScope;
.super Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RememberPausingScope"
.end annotation


# static fields
.field public static final c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RememberPausingScope;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RememberPausingScope;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v2, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;-><init>(III)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RememberPausingScope;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RememberPausingScope;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Landroidx/compose/runtime/composer/RememberManager;Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;->b(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    check-cast p0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 7
    .line 8
    check-cast p4, Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 9
    .line 10
    iget-object p1, p4, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a:Ljava/util/Set;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p2, Landroidx/compose/runtime/internal/PausedCompositionRemembers;

    .line 16
    .line 17
    invoke-direct {p2, p1}, Landroidx/compose/runtime/internal/PausedCompositionRemembers;-><init>(Ljava/util/Set;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p4, Landroidx/compose/runtime/internal/RememberEventDispatcher;->i:Landroidx/collection/MutableScatterMap;

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    sget-object p1, Landroidx/collection/ScatterMapKt;->a:[J

    .line 25
    .line 26
    new-instance p1, Landroidx/collection/MutableScatterMap;

    .line 27
    .line 28
    invoke-direct {p1}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p4, Landroidx/compose/runtime/internal/RememberEventDispatcher;->i:Landroidx/collection/MutableScatterMap;

    .line 32
    .line 33
    :cond_1
    invoke-virtual {p1, p0, p2}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p4, Landroidx/compose/runtime/internal/RememberEventDispatcher;->e:Landroidx/compose/runtime/collection/MutableVector;

    .line 37
    .line 38
    new-instance p1, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 39
    .line 40
    const/4 p3, -0x1

    .line 41
    invoke-direct {p1, p2, p3}, Landroidx/compose/runtime/GapRememberObserverHolder;-><init>(Landroidx/compose/runtime/RememberObserver;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
