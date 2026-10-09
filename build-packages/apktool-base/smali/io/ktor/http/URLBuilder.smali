.class public final Lio/ktor/http/URLBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final k:Lio/ktor/http/Url;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:I

.field public d:Lio/ktor/http/URLProtocol;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/List;

.field public i:Lio/ktor/http/ParametersBuilderImpl;

.field public j:Lio/ktor/http/UrlDecodedParametersBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "http://localhost"

    .line 2
    .line 3
    invoke-static {v0}, Lio/ktor/http/URLUtilsKt;->a(Ljava/lang/String;)Lio/ktor/http/Url;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/ktor/http/URLBuilder;->k:Lio/ktor/http/Url;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/ktor/http/URLBuilder;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lio/ktor/http/URLBuilder;->b()Lio/ktor/http/URLProtocol;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Lio/ktor/http/URLProtocol;->j:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "file"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    sget-object v0, Lio/ktor/http/URLBuilder;->k:Lio/ktor/http/Url;

    .line 26
    .line 27
    iget-object v1, v0, Lio/ktor/http/Url;->j:Ljava/lang/String;

    .line 28
    .line 29
    iput-object v1, p0, Lio/ktor/http/URLBuilder;->a:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v1, p0, Lio/ktor/http/URLBuilder;->d:Lio/ktor/http/URLProtocol;

    .line 32
    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    iget-object v1, v0, Lio/ktor/http/Url;->o:Lio/ktor/http/URLProtocol;

    .line 36
    .line 37
    iput-object v1, p0, Lio/ktor/http/URLBuilder;->d:Lio/ktor/http/URLProtocol;

    .line 38
    .line 39
    :cond_2
    iget v1, p0, Lio/ktor/http/URLBuilder;->c:I

    .line 40
    .line 41
    if-nez v1, :cond_3

    .line 42
    .line 43
    iget v0, v0, Lio/ktor/http/Url;->k:I

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lio/ktor/http/URLBuilder;->c(I)V

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_0
    return-void
.end method

.method public final b()Lio/ktor/http/URLProtocol;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/ktor/http/URLBuilder;->d:Lio/ktor/http/URLProtocol;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lio/ktor/http/URLProtocol;->l:Lio/ktor/http/URLProtocol;

    .line 6
    .line 7
    sget-object p0, Lio/ktor/http/URLProtocol;->l:Lio/ktor/http/URLProtocol;

    .line 8
    .line 9
    :cond_0
    return-object p0
.end method

.method public final c(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/high16 v0, 0x10000

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lio/ktor/http/URLBuilder;->c:I

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string p0, "Port must be between 0 and 65535, or 0 if not set. Provided: "

    .line 11
    .line 12
    invoke-static {p1, p0}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lfe;->l(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x100

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Lio/ktor/http/URLBuilderKt;->a(Lio/ktor/http/URLBuilder;Ljava/lang/StringBuilder;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
