.class public final Lnet/blip/android/ui/util/NuancedPermissionStateKt$ComposableLifecycle$lambda$0$0$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/LifecycleOwner;

.field public final synthetic b:Lh5;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Lh5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/ui/util/NuancedPermissionStateKt$ComposableLifecycle$lambda$0$0$$inlined$onDispose$1;->a:Landroidx/lifecycle/LifecycleOwner;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/android/ui/util/NuancedPermissionStateKt$ComposableLifecycle$lambda$0$0$$inlined$onDispose$1;->b:Lh5;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/blip/android/ui/util/NuancedPermissionStateKt$ComposableLifecycle$lambda$0$0$$inlined$onDispose$1;->a:Landroidx/lifecycle/LifecycleOwner;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->g()Landroidx/lifecycle/Lifecycle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lnet/blip/android/ui/util/NuancedPermissionStateKt$ComposableLifecycle$lambda$0$0$$inlined$onDispose$1;->b:Lh5;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->b(Landroidx/lifecycle/LifecycleObserver;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
