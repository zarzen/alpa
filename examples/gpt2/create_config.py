from transformers import GPT2Config

config = GPT2Config.from_pretrained("gpt2", resid_pdrop=0.0, embd_pdrop=0.0, attn_pdrop=0.0, vocab_size=50256)
# config = GPT2Config( 
#     vocab_size = 50257, 
#     n_positions = 1024, # max length position 
#     n_embd = 2560, # hidden-size and embedding dim
#     n_layer = 12, 
#     n_head = 40, # attn heads
#     n_inner = None,
#     activation_function = 'gelu_new',
#     resid_pdrop=0.0, embd_pdrop=0.0, attn_pdrop=0.0,
# )
config.save_pretrained("./norwegian-gpt2")
