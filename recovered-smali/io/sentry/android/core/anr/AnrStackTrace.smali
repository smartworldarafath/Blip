.class public final Lio/sentry/android/core/anr/AnrStackTrace;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/sentry/android/core/anr/AnrStackTrace;",
        ">;"
    }
.end annotation


# instance fields
.field public final j:[Ljava/lang/StackTraceElement;

.field public final k:J


# direct methods
.method public constructor <init>(J[Ljava/lang/StackTraceElement;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lio/sentry/android/core/anr/AnrStackTrace;->k:J

    .line 5
    .line 6
    iput-object p3, p0, Lio/sentry/android/core/anr/AnrStackTrace;->j:[Ljava/lang/StackTraceElement;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/DataOutputStream;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Lio/sentry/android/core/anr/AnrStackTrace;->k:J

    .line 6
    .line 7
    invoke-virtual {p1, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lio/sentry/android/core/anr/AnrStackTrace;->j:[Ljava/lang/StackTraceElement;

    .line 11
    .line 12
    array-length v1, p0

    .line 13
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    array-length v1, p0

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    if-ge v3, v1, :cond_4

    .line 20
    .line 21
    aget-object v4, p0, v3

    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    sget-object v6, Lio/sentry/util/StringUtils;->a:Ljava/nio/charset/Charset;

    .line 28
    .line 29
    const-string v6, ""

    .line 30
    .line 31
    if-nez v5, :cond_0

    .line 32
    .line 33
    move-object v5, v6

    .line 34
    :cond_0
    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    if-nez v5, :cond_1

    .line 42
    .line 43
    move-object v5, v6

    .line 44
    :cond_1
    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    if-nez v5, :cond_2

    .line 52
    .line 53
    move v7, v0

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move v7, v2

    .line 56
    :goto_1
    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 57
    .line 58
    .line 59
    if-nez v5, :cond_3

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    move-object v6, v5

    .line 63
    :goto_2
    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lio/sentry/android/core/anr/AnrStackTrace;

    .line 2
    .line 3
    iget-wide v0, p0, Lio/sentry/android/core/anr/AnrStackTrace;->k:J

    .line 4
    .line 5
    iget-wide p0, p1, Lio/sentry/android/core/anr/AnrStackTrace;->k:J

    .line 6
    .line 7
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method
