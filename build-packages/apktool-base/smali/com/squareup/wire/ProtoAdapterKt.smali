.class public abstract Lcom/squareup/wire/ProtoAdapterKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->k:Lcom/squareup/wire/FieldEncoding;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/squareup/wire/ProtoAdapter;->b:Lkotlin/reflect/KClass;

    .line 4
    .line 5
    sget-object v1, Lcom/squareup/wire/Syntax;->k:Lcom/squareup/wire/Syntax;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/squareup/wire/ProtoAdapter;->e:Ljava/lang/Object;

    .line 8
    .line 9
    new-instance v2, Lcom/squareup/wire/ProtoAdapterKt$commonWrapper$1;

    .line 10
    .line 11
    invoke-direct {v2, p1, p0, v0, v1}, Lcom/squareup/wire/ProtoAdapterKt$commonWrapper$1;-><init>(Ljava/lang/String;Lcom/squareup/wire/ProtoAdapter;Lkotlin/reflect/KClass;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
