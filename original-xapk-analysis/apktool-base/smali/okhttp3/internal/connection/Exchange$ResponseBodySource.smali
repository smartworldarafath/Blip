.class public final Lokhttp3/internal/connection/Exchange$ResponseBodySource;
.super Lokio/ForwardingSource;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/connection/Exchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ResponseBodySource"
.end annotation


# instance fields
.field public final k:J

.field public l:J

.field public m:Z

.field public n:Z

.field public o:Z

.field public final synthetic p:Lokhttp3/internal/connection/Exchange;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/Exchange;Lokio/Source;J)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->p:Lokhttp3/internal/connection/Exchange;

    .line 5
    .line 6
    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 7
    .line 8
    .line 9
    iput-wide p3, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->k:J

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->m:Z

    .line 13
    .line 14
    const-wide/16 p1, 0x0

    .line 15
    .line 16
    cmp-long p1, p3, p1

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->a(Ljava/io/IOException;)Ljava/io/IOException;

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public final J0(JLokio/Buffer;)J
    .locals 8

    .line 1
    const-string v0, "expected "

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->o:Z

    .line 7
    .line 8
    if-nez v1, :cond_5

    .line 9
    .line 10
    :try_start_0
    iget-object v1, p0, Lokio/ForwardingSource;->j:Lokio/Source;

    .line 11
    .line 12
    invoke-interface {v1, p1, p2, p3}, Lokio/Source;->J0(JLokio/Buffer;)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    iget-boolean p3, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->m:Z

    .line 17
    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    const/4 p3, 0x0

    .line 21
    iput-boolean p3, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->m:Z

    .line 22
    .line 23
    iget-object p3, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->p:Lokhttp3/internal/connection/Exchange;

    .line 24
    .line 25
    iget-object p3, p3, Lokhttp3/internal/connection/Exchange;->b:Lokhttp3/EventListener;

    .line 26
    .line 27
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    :goto_0
    const-wide/16 v1, -0x1

    .line 34
    .line 35
    cmp-long p3, p1, v1

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    if-nez p3, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0, v3}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->a(Ljava/io/IOException;)Ljava/io/IOException;

    .line 41
    .line 42
    .line 43
    return-wide v1

    .line 44
    :cond_1
    iget-wide v4, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->l:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    add-long/2addr v4, p1

    .line 47
    iget-wide v6, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->k:J

    .line 48
    .line 49
    cmp-long p3, v6, v1

    .line 50
    .line 51
    if-eqz p3, :cond_3

    .line 52
    .line 53
    cmp-long p3, v4, v6

    .line 54
    .line 55
    if-gtz p3, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    :try_start_1
    new-instance p1, Ljava/net/ProtocolException;

    .line 59
    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p3, " bytes but received "

    .line 69
    .line 70
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_3
    :goto_1
    iput-wide v4, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->l:J

    .line 85
    .line 86
    cmp-long p3, v4, v6

    .line 87
    .line 88
    if-nez p3, :cond_4

    .line 89
    .line 90
    invoke-virtual {p0, v3}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->a(Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    .line 92
    .line 93
    :cond_4
    return-wide p1

    .line 94
    :goto_2
    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->a(Ljava/io/IOException;)Ljava/io/IOException;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    throw p0

    .line 99
    :cond_5
    const-string p0, "closed"

    .line 100
    .line 101
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-wide/16 p0, 0x0

    .line 105
    .line 106
    return-wide p0
.end method

.method public final a(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->n:Z

    .line 8
    .line 9
    iget-object v1, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->p:Lokhttp3/internal/connection/Exchange;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    iget-boolean v3, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->m:Z

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    iput-boolean v2, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->m:Z

    .line 19
    .line 20
    iget-object p0, v1, Lokhttp3/internal/connection/Exchange;->b:Lokhttp3/EventListener;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {v1, v0, v2, p1}, Lokhttp3/internal/connection/Exchange;->a(ZZLjava/io/IOException;)Ljava/io/IOException;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->o:Z

    .line 8
    .line 9
    :try_start_0
    invoke-super {p0}, Lokio/ForwardingSource;->close()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->a(Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->a(Ljava/io/IOException;)Ljava/io/IOException;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    throw p0
.end method
