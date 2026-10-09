.class public final Landroidx/work/impl/WorkerWrapper$Resolution$Failed;
.super Landroidx/work/impl/WorkerWrapper$Resolution;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/WorkerWrapper$Resolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Failed"
.end annotation


# instance fields
.field public final a:Landroidx/work/ListenableWorker$Result;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/work/ListenableWorker$Result$Failure;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/work/ListenableWorker$Result$Failure;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;->a:Landroidx/work/ListenableWorker$Result;

    .line 10
    .line 11
    return-void
.end method
