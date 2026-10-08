.class public final Landroidx/navigation/compose/DialogHostKt$PopulateVisibleList$lambda$0$0$0$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# instance fields
.field public final synthetic a:Landroidx/navigation/NavBackStackEntry;

.field public final synthetic b:Lt7;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavBackStackEntry;Lt7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/navigation/compose/DialogHostKt$PopulateVisibleList$lambda$0$0$0$$inlined$onDispose$1;->a:Landroidx/navigation/NavBackStackEntry;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/navigation/compose/DialogHostKt$PopulateVisibleList$lambda$0$0$0$$inlined$onDispose$1;->b:Lt7;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/navigation/compose/DialogHostKt$PopulateVisibleList$lambda$0$0$0$$inlined$onDispose$1;->a:Landroidx/navigation/NavBackStackEntry;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry;->t:Landroidx/lifecycle/LifecycleRegistry;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/navigation/compose/DialogHostKt$PopulateVisibleList$lambda$0$0$0$$inlined$onDispose$1;->b:Lt7;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;->b(Landroidx/lifecycle/LifecycleObserver;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
