.class public abstract Lokhttp3/internal/concurrent/Task;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public c:Lokhttp3/internal/concurrent/TaskQueue;

.field public d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lokhttp3/internal/concurrent/Task;->a:Ljava/lang/String;

    .line 8
    .line 9
    iput-boolean p2, p0, Lokhttp3/internal/concurrent/Task;->b:Z

    .line 10
    .line 11
    const-wide/16 p1, -0x1

    .line 12
    .line 13
    iput-wide p1, p0, Lokhttp3/internal/concurrent/Task;->d:J

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract a()J
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/concurrent/Task;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
