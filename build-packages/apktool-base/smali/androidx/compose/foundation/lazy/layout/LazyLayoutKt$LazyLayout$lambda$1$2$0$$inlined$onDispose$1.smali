.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$lambda$1$2$0$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# instance fields
.field public final synthetic a:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$lambda$1$2$0$$inlined$onDispose$1;->a:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$lambda$1$2$0$$inlined$onDispose$1;->a:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->c:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;->d:Z

    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->c:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;

    .line 12
    .line 13
    return-void
.end method
