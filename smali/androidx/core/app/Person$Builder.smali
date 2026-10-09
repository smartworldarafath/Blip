.class public Landroidx/core/app/Person$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z


# virtual methods
.method public final a()Landroidx/core/app/Person;
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/app/Person;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/core/app/Person$Builder;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v1, v0, Landroidx/core/app/Person;->a:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/core/app/Person$Builder;->b:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, v0, Landroidx/core/app/Person;->b:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/core/app/Person$Builder;->c:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v1, v0, Landroidx/core/app/Person;->c:Ljava/lang/String;

    .line 17
    .line 18
    iget-boolean v1, p0, Landroidx/core/app/Person$Builder;->d:Z

    .line 19
    .line 20
    iput-boolean v1, v0, Landroidx/core/app/Person;->d:Z

    .line 21
    .line 22
    iget-boolean p0, p0, Landroidx/core/app/Person$Builder;->e:Z

    .line 23
    .line 24
    iput-boolean p0, v0, Landroidx/core/app/Person;->e:Z

    .line 25
    .line 26
    return-object v0
.end method
