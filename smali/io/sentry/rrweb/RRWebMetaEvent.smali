.class public final Lio/sentry/rrweb/RRWebMetaEvent;
.super Lio/sentry/rrweb/RRWebEvent;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/rrweb/RRWebMetaEvent$Deserializer;
    }
.end annotation


# instance fields
.field public l:Ljava/lang/String;

.field public m:I

.field public n:I

.field public o:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/rrweb/RRWebEventType;->Meta:Lio/sentry/rrweb/RRWebEventType;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lio/sentry/rrweb/RRWebEvent;-><init>(Lio/sentry/rrweb/RRWebEventType;)V

    .line 4
    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    iput-object v0, p0, Lio/sentry/rrweb/RRWebMetaEvent;->l:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    const-class v2, Lio/sentry/rrweb/RRWebMetaEvent;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-super {p0, p1}, Lio/sentry/rrweb/RRWebEvent;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    return v1

    .line 24
    :cond_2
    check-cast p1, Lio/sentry/rrweb/RRWebMetaEvent;

    .line 25
    .line 26
    iget v2, p0, Lio/sentry/rrweb/RRWebMetaEvent;->m:I

    .line 27
    .line 28
    iget v3, p1, Lio/sentry/rrweb/RRWebMetaEvent;->m:I

    .line 29
    .line 30
    if-ne v2, v3, :cond_3

    .line 31
    .line 32
    iget v2, p0, Lio/sentry/rrweb/RRWebMetaEvent;->n:I

    .line 33
    .line 34
    iget v3, p1, Lio/sentry/rrweb/RRWebMetaEvent;->n:I

    .line 35
    .line 36
    if-ne v2, v3, :cond_3

    .line 37
    .line 38
    iget-object p0, p0, Lio/sentry/rrweb/RRWebMetaEvent;->l:Ljava/lang/String;

    .line 39
    .line 40
    iget-object p1, p1, Lio/sentry/rrweb/RRWebMetaEvent;->l:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p0, p1}, Lio/sentry/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_3

    .line 47
    .line 48
    return v0

    .line 49
    :cond_3
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    invoke-super {p0}, Lio/sentry/rrweb/RRWebEvent;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lio/sentry/rrweb/RRWebMetaEvent;->l:Ljava/lang/String;

    .line 10
    .line 11
    iget v2, p0, Lio/sentry/rrweb/RRWebMetaEvent;->m:I

    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget p0, p0, Lio/sentry/rrweb/RRWebMetaEvent;->n:I

    .line 18
    .line 19
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public final serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3

    .line 1
    check-cast p1, Lio/sentry/JsonObjectWriter;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->a()Lio/sentry/JsonObjectWriter;

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, p2}, Lio/sentry/rrweb/RRWebEvent$Serializer;->a(Lio/sentry/rrweb/RRWebEvent;Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "data"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->a()Lio/sentry/JsonObjectWriter;

    .line 15
    .line 16
    .line 17
    const-string v0, "href"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lio/sentry/rrweb/RRWebMetaEvent;->l:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 25
    .line 26
    .line 27
    const-string v0, "height"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lio/sentry/rrweb/RRWebMetaEvent;->m:I

    .line 33
    .line 34
    int-to-long v0, v0

    .line 35
    invoke-virtual {p1, v0, v1}, Lio/sentry/JsonObjectWriter;->f(J)Lio/sentry/JsonObjectWriter;

    .line 36
    .line 37
    .line 38
    const-string v0, "width"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 41
    .line 42
    .line 43
    iget v0, p0, Lio/sentry/rrweb/RRWebMetaEvent;->n:I

    .line 44
    .line 45
    int-to-long v0, v0

    .line 46
    invoke-virtual {p1, v0, v1}, Lio/sentry/JsonObjectWriter;->f(J)Lio/sentry/JsonObjectWriter;

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lio/sentry/rrweb/RRWebMetaEvent;->o:Ljava/util/HashMap;

    .line 50
    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Ljava/lang/String;

    .line 72
    .line 73
    iget-object v2, p0, Lio/sentry/rrweb/RRWebMetaEvent;->o:Ljava/util/HashMap;

    .line 74
    .line 75
    invoke-static {v2, v1, p1, v1, p2}, Ljb;->n(Ljava/util/HashMap;Ljava/lang/String;Lio/sentry/JsonObjectWriter;Ljava/lang/String;Lio/sentry/ILogger;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->b()Lio/sentry/JsonObjectWriter;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->b()Lio/sentry/JsonObjectWriter;

    .line 83
    .line 84
    .line 85
    return-void
.end method
