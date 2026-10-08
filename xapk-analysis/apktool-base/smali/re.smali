.class public final synthetic Lre;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/work/impl/ExecutionListener;


# instance fields
.field public final synthetic j:Ljava/util/concurrent/Executor;

.field public final synthetic k:Ljava/util/List;

.field public final synthetic l:Landroidx/work/Configuration;

.field public final synthetic m:Landroidx/work/impl/WorkDatabase;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/utils/SerialExecutorImpl;Ljava/util/List;Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lre;->j:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    iput-object p2, p0, Lre;->k:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lre;->l:Landroidx/work/Configuration;

    .line 9
    .line 10
    iput-object p4, p0, Lre;->m:Landroidx/work/impl/WorkDatabase;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final b(Landroidx/work/impl/model/WorkGenerationalId;Z)V
    .locals 6

    .line 1
    sget-object p2, Landroidx/work/impl/Schedulers;->a:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Lse;

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    iget-object v1, p0, Lre;->k:Ljava/util/List;

    .line 7
    .line 8
    iget-object v3, p0, Lre;->l:Landroidx/work/Configuration;

    .line 9
    .line 10
    iget-object v4, p0, Lre;->m:Landroidx/work/impl/WorkDatabase;

    .line 11
    .line 12
    move-object v2, p1

    .line 13
    invoke-direct/range {v0 .. v5}, Lse;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lre;->j:Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
