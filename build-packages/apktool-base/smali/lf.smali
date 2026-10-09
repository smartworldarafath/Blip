.class public final synthetic Llf;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field public final synthetic a:Ljava/time/Duration;


# direct methods
.method public synthetic constructor <init>(Ljava/time/Duration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llf;->a:Ljava/time/Duration;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p0, p0, Llf;->a:Ljava/time/Duration;

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Ljava/time/Instant;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    .line 16
    .line 17
    .line 18
    move-result-wide p0

    .line 19
    cmp-long p0, v0, p0

    .line 20
    .line 21
    if-gez p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return p0
.end method
