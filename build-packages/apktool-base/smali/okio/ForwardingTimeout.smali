.class public Lokio/ForwardingTimeout;
.super Lokio/Timeout;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public e:Lokio/Timeout;


# direct methods
.method public constructor <init>(Lokio/Timeout;)V
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
    iput-object p1, p0, Lokio/ForwardingTimeout;->e:Lokio/Timeout;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()Lokio/Timeout;
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/ForwardingTimeout;->e:Lokio/Timeout;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokio/Timeout;->a()Lokio/Timeout;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final b()Lokio/Timeout;
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/ForwardingTimeout;->e:Lokio/Timeout;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokio/Timeout;->b()Lokio/Timeout;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-object p0, p0, Lokio/ForwardingTimeout;->e:Lokio/Timeout;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokio/Timeout;->c()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final d(J)Lokio/Timeout;
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/ForwardingTimeout;->e:Lokio/Timeout;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lokio/Timeout;->d(J)Lokio/Timeout;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final e()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/ForwardingTimeout;->e:Lokio/Timeout;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokio/Timeout;->e()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final f()V
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/ForwardingTimeout;->e:Lokio/Timeout;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokio/Timeout;->f()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g(J)Lokio/Timeout;
    .locals 1

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lokio/ForwardingTimeout;->e:Lokio/Timeout;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lokio/Timeout;->g(J)Lokio/Timeout;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method
