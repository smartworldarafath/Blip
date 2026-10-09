.class public final Landroidx/navigation/compose/NavHostEventHandler;
.super Landroidx/navigationevent/NavigationEventHandler;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigationevent/NavigationEventHandler<",
        "Landroidx/navigation/compose/NavBackStackEntryInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Landroidx/navigation/compose/ComposeNavigator;

.field public g:Landroidx/navigation/NavBackStackEntry;

.field public final h:Landroidx/compose/runtime/MutableState;

.field public final i:Landroidx/compose/runtime/MutableFloatState;

.field public final j:Landroidx/compose/runtime/MutableIntState;


# direct methods
.method public constructor <init>(Landroidx/navigation/compose/ComposeNavigator;)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/navigation/compose/NavBackStackEntryInfo;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/navigation/Navigator;->b()Landroidx/navigation/NavigatorState;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Landroidx/navigation/NavigatorState;->e:Lkotlinx/coroutines/flow/StateFlow;

    .line 8
    .line 9
    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/util/List;

    .line 14
    .line 15
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Landroidx/navigation/compose/NavBackStackEntryInfo;-><init>(Landroidx/navigation/NavBackStackEntry;)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-direct {p0, v0, v1}, Landroidx/navigationevent/NavigationEventHandler;-><init>(Landroidx/navigationevent/NavigationEventInfo;Z)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Landroidx/navigation/compose/NavHostEventHandler;->f:Landroidx/navigation/compose/ComposeNavigator;

    .line 29
    .line 30
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Landroidx/navigation/compose/NavHostEventHandler;->h:Landroidx/compose/runtime/MutableState;

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->a(F)Landroidx/compose/runtime/MutableFloatState;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Landroidx/navigation/compose/NavHostEventHandler;->i:Landroidx/compose/runtime/MutableFloatState;

    .line 44
    .line 45
    const/4 p1, 0x2

    .line 46
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotIntStateKt;->a(I)Landroidx/compose/runtime/MutableIntState;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Landroidx/navigation/compose/NavHostEventHandler;->j:Landroidx/compose/runtime/MutableIntState;

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/navigation/compose/NavHostEventHandler;->h:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/navigation/compose/NavHostEventHandler;->i:Landroidx/compose/runtime/MutableFloatState;

    .line 11
    .line 12
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroidx/navigation/compose/NavHostEventHandler;->j:Landroidx/compose/runtime/MutableIntState;

    .line 19
    .line 20
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->k(I)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Landroidx/navigation/compose/NavHostEventHandler;->g:Landroidx/navigation/NavBackStackEntry;

    .line 28
    .line 29
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/navigation/compose/NavHostEventHandler;->h:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/navigation/compose/NavHostEventHandler;->g()V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v1, p0, Landroidx/navigation/compose/NavHostEventHandler;->g:Landroidx/navigation/NavBackStackEntry;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/navigation/compose/NavHostEventHandler;->f:Landroidx/navigation/compose/ComposeNavigator;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v2, v1, v3}, Landroidx/navigation/compose/ComposeNavigator;->e(Landroidx/navigation/NavBackStackEntry;Z)V

    .line 29
    .line 30
    .line 31
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 32
    .line 33
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Landroidx/navigation/compose/NavHostEventHandler;->i:Landroidx/compose/runtime/MutableFloatState;

    .line 39
    .line 40
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Landroidx/navigation/compose/NavHostEventHandler;->j:Landroidx/compose/runtime/MutableIntState;

    .line 47
    .line 48
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 49
    .line 50
    const/4 v1, 0x2

    .line 51
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->k(I)V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Landroidx/navigation/compose/NavHostEventHandler;->g:Landroidx/navigation/NavBackStackEntry;

    .line 56
    .line 57
    return-void
.end method

.method public final c(Landroidx/navigationevent/NavigationEvent;)V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/navigation/compose/NavHostEventHandler;->h:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget v0, p1, Landroidx/navigationevent/NavigationEvent;->b:F

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/navigation/compose/NavHostEventHandler;->i:Landroidx/compose/runtime/MutableFloatState;

    .line 13
    .line 14
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 17
    .line 18
    .line 19
    iget p1, p1, Landroidx/navigationevent/NavigationEvent;->a:I

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/navigation/compose/NavHostEventHandler;->j:Landroidx/compose/runtime/MutableIntState;

    .line 22
    .line 23
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->k(I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final d(Landroidx/navigationevent/NavigationEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/navigation/compose/NavHostEventHandler;->g()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/navigation/compose/NavHostEventHandler;->h:Landroidx/compose/runtime/MutableState;

    .line 7
    .line 8
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget v0, p1, Landroidx/navigationevent/NavigationEvent;->b:F

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/navigation/compose/NavHostEventHandler;->i:Landroidx/compose/runtime/MutableFloatState;

    .line 16
    .line 17
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 20
    .line 21
    .line 22
    iget p1, p1, Landroidx/navigationevent/NavigationEvent;->a:I

    .line 23
    .line 24
    iget-object p0, p0, Landroidx/navigation/compose/NavHostEventHandler;->j:Landroidx/compose/runtime/MutableIntState;

    .line 25
    .line 26
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->k(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final g()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/navigation/compose/NavHostEventHandler;->f:Landroidx/navigation/compose/ComposeNavigator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/navigation/Navigator;->b()Landroidx/navigation/NavigatorState;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Landroidx/navigation/NavigatorState;->e:Lkotlinx/coroutines/flow/StateFlow;

    .line 8
    .line 9
    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x2

    .line 20
    if-ge v2, v3, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    sub-int/2addr v4, v3

    .line 34
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroidx/navigation/compose/ComposeNavigator;->g(Landroidx/navigation/NavBackStackEntry;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroidx/navigation/compose/ComposeNavigator;->g(Landroidx/navigation/NavBackStackEntry;)V

    .line 44
    .line 45
    .line 46
    iput-object v2, p0, Landroidx/navigation/compose/NavHostEventHandler;->g:Landroidx/navigation/NavBackStackEntry;

    .line 47
    .line 48
    return-void
.end method
