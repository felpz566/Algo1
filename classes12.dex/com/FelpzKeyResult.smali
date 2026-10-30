.class public final Lcom/FelpzKeyResult;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;

.field private final context:Landroid/content/Context;
.field private final response:Lorg/json/JSONObject;

.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 3

    iput-object p1, p0, Lcom/FelpzKeyResult;->context:Landroid/content/Context;
    iput-object p2, p0, Lcom/FelpzKeyResult;->response:Lorg/json/JSONObject;
    return-void
.end method

.method public run()V
    .registers 5

    iget-object v1, p0, Lcom/FelpzKeyResult;->response:Lorg/json/JSONObject;
    const-string v0, "valid"
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :invalid_key

    iget-object v0, p0, Lcom/FelpzKeyResult;->context:Landroid/content/Context;
    new-instance v1, Landroid/app/AlertDialog$Builder;
    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Felpz Panel"
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, "Key validada! Painel visual ativado."
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, "Continuar"
    const/4 v2, 0x0
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    move-result-object v0
    return-void

    :invalid_key
    iget-object v0, p0, Lcom/FelpzKeyResult;->context:Landroid/content/Context;
    iget-object v1, p0, Lcom/FelpzKeyResult;->response:Lorg/json/JSONObject;

    const-string v2, "code"
    const-string v3, "invalid_key"
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Key nao validada: "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1

    const/4 v2, 0x0
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    return-void
.end method
