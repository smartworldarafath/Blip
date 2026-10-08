.class public final synthetic Lsc;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic j:Ljava/util/concurrent/Executor;

.field public final synthetic k:Landroidx/work/Tracer;

.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:Lkotlin/jvm/functions/Function0;

.field public final synthetic n:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroidx/work/Tracer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/MutableLiveData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsc;->j:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    iput-object p2, p0, Lsc;->k:Landroidx/work/Tracer;

    .line 7
    .line 8
    iput-object p3, p0, Lsc;->l:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lsc;->m:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    iput-object p5, p0, Lsc;->n:Landroidx/lifecycle/MutableLiveData;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final e(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance v0, Ltc;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    iget-object v1, p0, Lsc;->k:Landroidx/work/Tracer;

    .line 5
    .line 6
    iget-object v2, p0, Lsc;->l:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v3, p0, Lsc;->m:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    iget-object v4, p0, Lsc;->n:Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    move-object v5, p1

    .line 13
    invoke-direct/range {v0 .. v6}, Ltc;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lsc;->j:Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method
