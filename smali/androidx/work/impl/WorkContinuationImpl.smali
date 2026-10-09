.class public Landroidx/work/impl/WorkContinuationImpl;
.super Landroidx/work/WorkContinuation;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final h:Ljava/lang/String;


# instance fields
.field public final a:Landroidx/work/impl/WorkManagerImpl;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;

.field public f:Z

.field public g:Landroidx/work/Operation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WorkContinuationImpl"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/Logger;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/WorkContinuationImpl;->h:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/work/ExistingWorkPolicy;->j:[Landroidx/work/ExistingWorkPolicy;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/work/impl/WorkContinuationImpl;->a:Landroidx/work/impl/WorkManagerImpl;

    .line 7
    .line 8
    iput-object p2, p0, Landroidx/work/impl/WorkContinuationImpl;->b:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p3, p0, Landroidx/work/impl/WorkContinuationImpl;->c:Ljava/util/List;

    .line 11
    .line 12
    new-instance p1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/work/impl/WorkContinuationImpl;->d:Ljava/util/ArrayList;

    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Landroidx/work/impl/WorkContinuationImpl;->e:Ljava/util/ArrayList;

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-ge p1, p2, :cond_0

    .line 36
    .line 37
    sget-object p2, Landroidx/work/ExistingWorkPolicy;->j:[Landroidx/work/ExistingWorkPolicy;

    .line 38
    .line 39
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Landroidx/work/WorkRequest;

    .line 44
    .line 45
    iget-object p2, p2, Landroidx/work/WorkRequest;->a:Ljava/util/UUID;

    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Landroidx/work/impl/WorkContinuationImpl;->d:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Landroidx/work/impl/WorkContinuationImpl;->e:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    add-int/lit8 p1, p1, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method public static b(Landroidx/work/impl/WorkContinuationImpl;)Ljava/util/HashSet;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final a()Landroidx/work/Operation;
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/work/impl/WorkContinuationImpl;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/work/impl/WorkContinuationImpl;->a:Landroidx/work/impl/WorkManagerImpl;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/work/impl/WorkManagerImpl;->b:Landroidx/work/Configuration;

    .line 8
    .line 9
    iget-object v1, v1, Landroidx/work/Configuration;->m:Landroidx/work/ConfigurationKt$createDefaultTracer$tracer$1;

    .line 10
    .line 11
    sget-object v2, Landroidx/work/ExistingWorkPolicy;->j:[Landroidx/work/ExistingWorkPolicy;

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->d:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 14
    .line 15
    check-cast v0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->a:Landroidx/work/impl/utils/SerialExecutorImpl;

    .line 18
    .line 19
    new-instance v2, Lkb;

    .line 20
    .line 21
    const/16 v3, 0x19

    .line 22
    .line 23
    invoke-direct {v2, v3, p0}, Lkb;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    const-string v3, "EnqueueRunnable_KEEP"

    .line 27
    .line 28
    invoke-static {v1, v3, v0, v2}, Landroidx/work/OperationKt;->a(Landroidx/work/ConfigurationKt$createDefaultTracer$tracer$1;Ljava/lang/String;Landroidx/work/impl/utils/SerialExecutorImpl;Lkotlin/jvm/functions/Function0;)Landroidx/work/Operation;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Landroidx/work/impl/WorkContinuationImpl;->g:Landroidx/work/Operation;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v2, "Already enqueued work ids ("

    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v2, ", "

    .line 47
    .line 48
    iget-object v3, p0, Landroidx/work/impl/WorkContinuationImpl;->d:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, ")"

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    sget-object v2, Landroidx/work/impl/WorkContinuationImpl;->h:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v2, v1}, Landroidx/work/Logger;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    iget-object p0, p0, Landroidx/work/impl/WorkContinuationImpl;->g:Landroidx/work/Operation;

    .line 72
    .line 73
    return-object p0
.end method
