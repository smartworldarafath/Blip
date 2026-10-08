.class public final Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;
.super Ljava/lang/IllegalArgumentException;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/ProtoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumConstantNotFoundException"
.end annotation


# instance fields
.field public final j:I


# direct methods
.method public constructor <init>(ILkotlin/reflect/KClass;)V
    .locals 2

    .line 1
    const-string v0, "Unknown enum tag "

    .line 2
    .line 3
    const-string v1, " for "

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Ljb;->j(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-static {p2}, Lkotlin/jvm/JvmClassMappingKt;->a(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p2, 0x0

    .line 21
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iput p1, p0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->j:I

    .line 32
    .line 33
    return-void
.end method
