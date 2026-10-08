.class public final Landroidx/work/impl/WorkerWrapper$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/WorkerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Landroidx/work/Configuration;

.field public final b:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

.field public final c:Landroidx/work/impl/foreground/ForegroundProcessor;

.field public final d:Landroidx/work/impl/WorkDatabase;

.field public final e:Landroidx/work/impl/model/WorkSpec;

.field public final f:Ljava/util/ArrayList;

.field public final g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;Landroidx/work/impl/foreground/ForegroundProcessor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkSpec;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Landroidx/work/impl/WorkerWrapper$Builder;->a:Landroidx/work/Configuration;

    .line 11
    .line 12
    iput-object p3, p0, Landroidx/work/impl/WorkerWrapper$Builder;->b:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 13
    .line 14
    iput-object p4, p0, Landroidx/work/impl/WorkerWrapper$Builder;->c:Landroidx/work/impl/foreground/ForegroundProcessor;

    .line 15
    .line 16
    iput-object p5, p0, Landroidx/work/impl/WorkerWrapper$Builder;->d:Landroidx/work/impl/WorkDatabase;

    .line 17
    .line 18
    iput-object p6, p0, Landroidx/work/impl/WorkerWrapper$Builder;->e:Landroidx/work/impl/model/WorkSpec;

    .line 19
    .line 20
    iput-object p7, p0, Landroidx/work/impl/WorkerWrapper$Builder;->f:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper$Builder;->g:Landroid/content/Context;

    .line 30
    .line 31
    new-instance p0, Landroidx/work/WorkerParameters$RuntimeExtras;

    .line 32
    .line 33
    invoke-direct {p0}, Landroidx/work/WorkerParameters$RuntimeExtras;-><init>()V

    .line 34
    .line 35
    .line 36
    return-void
.end method
