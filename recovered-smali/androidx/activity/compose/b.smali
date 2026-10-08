.class public final synthetic Landroidx/activity/compose/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Landroidx/activity/compose/ComposeBackHandler;

.field public final synthetic k:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/compose/ComposeBackHandler;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/activity/compose/b;->j:Landroidx/activity/compose/ComposeBackHandler;

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/activity/compose/b;->k:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/activity/compose/b;->j:Landroidx/activity/compose/ComposeBackHandler;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/activity/compose/internal/BackHandlerCompat;->a:Landroidx/activity/compose/internal/BackHandlerCompat$onBackPressedCallback$1;

    .line 6
    .line 7
    iget-boolean p0, p0, Landroidx/activity/compose/b;->k:Z

    .line 8
    .line 9
    invoke-virtual {v1, p0}, Landroidx/activity/OnBackPressedCallback;->e(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Landroidx/activity/compose/internal/BackHandlerCompat;->b:Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;

    .line 13
    .line 14
    invoke-virtual {v1, p0}, Landroidx/navigationevent/NavigationEventHandler;->f(Z)V

    .line 15
    .line 16
    .line 17
    new-instance p0, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1;

    .line 18
    .line 19
    invoke-direct {p0, p1, v0}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1;-><init>(Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;Landroidx/activity/compose/ComposeBackHandler;)V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method
