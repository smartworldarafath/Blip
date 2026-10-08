.class public final Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RetainedValuesStoreEntry"
.end annotation


# instance fields
.field public final a:Landroidx/compose/ui/platform/LifecycleRetainedValuesStore;

.field public final b:Landroidx/compose/ui/platform/LifecycleRetainedValuesStore;

.field public c:Z

.field public d:Landroidx/compose/runtime/CancellationHandle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/ui/platform/LifecycleRetainedValuesStore;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/compose/ui/platform/LifecycleRetainedValuesStore;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;->a:Landroidx/compose/ui/platform/LifecycleRetainedValuesStore;

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;->b:Landroidx/compose/ui/platform/LifecycleRetainedValuesStore;

    .line 12
    .line 13
    return-void
.end method
