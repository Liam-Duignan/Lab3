# chain and conditionals
ls -l | grep "\.sh$"
echo "Done!" && echo "Success" || echo "Fail"

# alias examples
alias ll='ls -la'
alias ports='ss -tuln'

echo "alias myip='ip -4 addr show | grep -oP "(?<=inet\s)\d+(\.\d+){3}"' >> ~/.bashrc
source ~/.bashrc