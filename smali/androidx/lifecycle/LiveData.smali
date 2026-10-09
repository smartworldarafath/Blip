.class public abstract Landroidx/lifecycle/LiveData;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/LiveData$ObserverWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final i:Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroidx/arch/core/internal/SafeIterableMap;

.field public volatile c:Ljava/lang/Object;

.field public volatile d:Ljava/lang/Object;

.field public e:I

.field public f:Z

.field public g:Z

.field public final h:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/lifecycle/LiveData;->i:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->a:Ljava/lang/Object;

    .line 39
    new-instance v0, Landroidx/arch/core/internal/SafeIterableMap;

    invoke-direct {v0}, Landroidx/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->b:Landroidx/arch/core/internal/SafeIterableMap;

    .line 40
    sget-object v0, Landroidx/lifecycle/LiveData;->i:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->d:Ljava/lang/Object;

    .line 41
    new-instance v1, Landroidx/lifecycle/LiveData$1;

    invoke-direct {v1, p0}, Landroidx/lifecycle/LiveData$1;-><init>(Landroidx/lifecycle/LiveData;)V

    iput-object v1, p0, Landroidx/lifecycle/LiveData;->h:Ljava/lang/Runnable;

    .line 42
    iput-object v0, p0, Landroidx/lifecycle/LiveData;->c:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Landroidx/lifecycle/LiveData;->e:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    sget-object p1, Landroidx/work/Operation;->b:Landroidx/work/Operation$State$IN_PROGRESS;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/lifecycle/LiveData;->a:Ljava/lang/Object;

    .line 12
    .line 13
    new-instance v0, Landroidx/arch/core/internal/SafeIterableMap;

    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/arch/core/internal/SafeIterableMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroidx/lifecycle/LiveData;->b:Landroidx/arch/core/internal/SafeIterableMap;

    .line 19
    .line 20
    sget-object v0, Landroidx/lifecycle/LiveData;->i:Ljava/lang/Object;

    .line 21
    .line 22
    iput-object v0, p0, Landroidx/lifecycle/LiveData;->d:Ljava/lang/Object;

    .line 23
    .line 24
    new-instance v0, Landroidx/lifecycle/LiveData$1;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Landroidx/lifecycle/LiveData$1;-><init>(Landroidx/lifecycle/LiveData;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Landroidx/lifecycle/LiveData;->h:Ljava/lang/Runnable;

    .line 30
    .line 31
    iput-object p1, p0, Landroidx/lifecycle/LiveData;->c:Ljava/lang/Object;

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    iput p1, p0, Landroidx/lifecycle/LiveData;->e:I

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
.end method
