.class public final Landroidx/compose/ui/platform/LifecycleRetainedValuesStore;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/runtime/retain/RetainedValuesStore;


# instance fields
.field public final a:Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/ui/platform/LifecycleRetainedValuesStore;->a:Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;

    .line 10
    .line 11
    iget-boolean p0, v0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->b:Z

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-boolean p0, v0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->c:Z

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    const-string p0, "ManagedValuesStore tried to enter composition twice. Did you attempt to install the same store multiple times or into two compositions?"

    .line 21
    .line 22
    invoke-static {p0}, Landroidx/compose/runtime/retain/impl/PreconditionsKt;->a(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->a()V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    iput-boolean p0, v0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->c:Z

    .line 30
    .line 31
    return-void
.end method
